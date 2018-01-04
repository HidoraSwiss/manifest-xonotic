//@auth
//@req(nodeId, port)

var envName = "${env.envName}";

var resp = jelastic.env.control.AddEndpoint(
  envName,
  getParam("session"),
  nodeId,
  port,
  "UDP",
  "Xonotic Server"
);
if (resp.result != 0) return resp;

var url = "${env.domain}:" + resp.object.publicPort;

var scripting = hivext.local.exp.wrapRequest(
  new com.hivext.api.development.Scripting({
    serverUrl: "http://" + window.location.host.replace("app", "appstore") + "/"
  })
);

var text = `Your Xonotic server has been successfully deployed
Please use the following server address to connect your server : ${url}.`;
resp = scripting.eval({
  script: "InstallApp",
  targetAppid: "${env.appid}",
  session: getParam("session"),
  manifest: {
    jpsType: "update",
    application: {
      id: "sendEmail",
      name: "Xonotic Server",
      success: {
        text: text,
        email: text
      }
    }
  }
});

return resp;
