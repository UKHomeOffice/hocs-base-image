local pipeline(triggerName, stepsName) = {
    kind: "pipeline",
    type: "kubernetes",
    name: "build",
    trigger : triggerName,
    steps: stepsName
};

local trigger(eventName, branchName) = {
   event : [ eventName ],
   branch: branchName
};

local dockerBuild(imageTags) = {
  name: "docker build",
  image: "plugins/docker",
  settings: {
    dockerfile: "base/Dockerfile",
    registry: "quay.io",
    repo: "quay.io/ukhomeofficedigital/hocs-base-image",
    tags : imageTags
  },
  environment: {
    DOCKER_PASSWORD: {
        from_secret: "QUAY_ROBOT_TOKEN"
    },
    DOCKER_USERNAME: ukhomeofficedigital+hocs_quay_robot
  }
};

[
pipeline("build base image branch", trigger("push", {exclude : [ "main" ]}), [DockerBuild(["${DRONE_COMMIT_SHA}"])] ),
pipeline("build base image main", trigger("tag", "main"), [DockerBuild(["${DRONE_COMMIT_SHA}", "${DRONE_COMMIT_SHA}", "latest" ])] )
]
