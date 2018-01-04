![Logo Xonotic](http://xonotic.org/static/img/xonotic-logo.png)

> [Xonotic](http://xonotic.org/) is an addictive, arena-style first person shooter with crisp movement and a wide array of weapons. It combines intuitive mechanics with in-your-face action to elevate your heart rate. Xonotic is and *will always be* free-to-play. It is available under the [copyleft](https://www.gnu.org/copyleft/)-style [GPLv2](http://www.gnu.org/licenses/gpl-2.0.html) license.

## Deploy a Xonotic server on Jelastic

1. On the Jelastic console, click on Import and select the URL tab.
2. Paste this URL in the input field : <https://raw.githubusercontent.com/HidoraSwiss/manifest-xonotic/master/manifest.jps> and click on Import.
3. Provide a name for your server and tweak some configuration if needed.

Few minutes later, your new Xonotic server is installed and you can start to play using the URL sent to you by e-mail.

> You need to enter this URL in the *Address* field on the Multiplayer panel in the [Xonotic client](http://xonotic.org/).

## Configuration

If the default configuration doesn't suit you, you can modify the config file `/opt/Xonotic/data/server.cfg` and restart the Xonotic node.

The server logs can be seen in the `run.log` file. 