# Development with Devspaces

### Devspaces 

Manage your Devspaces https://www.devspaces.io/.

Read up-to-date documentation about cli installation and operation in https://www.devspaces.io/devspaces/help.

Here follows the main commands used in Devspaces cli. 

|action   |Description                                                                                      |
|---------|-------------------------------------------------------------------------------------------------|
|`devspaces --help`                       |Check the available command names.                               |
|`devspaces create [options]`             |Creates a DevSpace using your local DevSpaces configuration file |
|`devspaces start trilogy-zulip`          |Starts the DevSpace named \[trilogy-zulip\]                      |
|`devspaces bind trilogy-zulip`           |Syncs the DevSpace with the current directory                    |
|`devspaces info trilogy-zulip [options]` |Displays configuration info about the DevSpace.                  |

Use `devspaces --help` to know about updated commands.

#### Development flow

You should have Devspaces cli services started and logged to develop with Devspaces.
The following commands should be issued from **project directory**.

1 - Create Devspaces

```bash
$ cd devspaces/docker
$ devspaces create
$ cd ../../
```

2 - Start containers

```bash
devspaces start trilogy-zulip
```

3 - Start containers synchronization

```bash
devspaces bind trilogy-zulip
```

4 - Grab some container info

```bash
devspaces info trilogy-zulip
```

Retrieve published DNS and endpoints using this command

5 - Connect to development container

```bash
devspaces exec trilogy-zulip
```

6 - Specify External Url

```bash
export EXTERNAL_HOST=`trilogy-zulip.<devspaces-user>.devspaces.io:<9991-mapped-port>`
```

7 - Provisioning

```bash
./provision.sh 
```

8 - Run Zulip

```bash
source /srv/zulip-py3-venv/bin/activate
./run.sh
```

Access application URLs:

Using information retrieved in step 4, access the following URL's:

* Application (bound to port 9991): 
    * `http://trilogy-zulip.<devspaces-user>.devspaces.io:<published-ports>/`
    

### Docker Script Manager (CLI)

Currently, we have these command available to work using local docker compose.

```bash
devspaces/docker-cli.sh <command>
```

|action    |Description                                                               |
|----------|--------------------------------------------------------------------------|
|`build`   |Builds images                                                             |
|`deploy`  |Deploy Docker compose containers                                          |
|`undeploy`|Undeploy Docker compose containers                                        |
|`start`   |Starts Docker compose containers                                          |
|`stop`    |Stops Docker compose containers                                           |
|`exec`    |Get into the container                                                    |

#### Development flow

1 - Build and Run `docker-compose` locally.

```bash
devspaces/docker-cli.sh build
devspaces/docker-cli.sh deploy
devspaces/docker-cli.sh start
```

2 - Get into container

```bash
devspaces/docker-cli.sh exec
```

3 - Provisioning

```bash
./provision.sh
```

4 - Run Zulip

```bash 
source /srv/zulip-py3-venv/bin/activate
./run.sh
```

Access application URLs:

* Application: 
    * http://localhost:9991/
