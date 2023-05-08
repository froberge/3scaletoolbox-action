# Import to 3Scale


Import-to-3scale is a GitHub Action for importing an openapi json file into 3Scale using the [3sacle toolbox](https://github.com/3scale/3scale_toolbox).


## Inputs Required

Refer to the [`podman push`](http://docs.podman.io/en/latest/markdown/podman-manifest-push.1.html) documentation for more information.

| Input Name | Description | Default |
| ---------- | ----------- | ------- |
| 3Sacle Token	| The Token to connect to the 3Scale API management console. | **Required** 
| 3Sacle Domain	| The domain name where 3sacle run. | **Required** 
| API File	| The openAPI file that need to  be uploaded | **Required** 
| Dev Key Token | The token for the dev, use in the userkey pair security mode| **NOT Required** |



## Examples

In this case we have define different parameters as secrets inside github for security reason. Find here a way to use the actions in a workflow.


```yaml

...


# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  update-api:
    name: update api on 3scale
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
    - name: Check out repository
      uses: actions/checkout@v3
      with:
        path: main


      # Runs a single command using the runners shell
    - name: install 3scale toolbox
      uses: froberge/3scaletoolbox-action@v0.0.1
      with:
        threeScale-token: ${{ secrets.THREESCALE_TOKEN }}
        threeScale-domain: ${{ secrets.THREESCALE_DOMAIN }}
        api-file: main/openAPI.json
```
