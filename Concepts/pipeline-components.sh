Declarative Pipeline: A more structured and user-friendly syntax introduced in Jenkins Pipeline.
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
    }
}

Scripted Pipeline: A more flexible syntax written as Groovy code.
node {
    stage('Build') {
        echo 'Building...'
    }
}

1. Agent
   Specifies where the pipeline or stage should run.

# Common options:
1. any: Executes the pipeline on any available agent.
2. label: Specifies a particular agent label.
3. none: Disables automatic agent allocation (used for advanced configurations).

Example:
agent { label 'linux' }

2. Stages
   Defines the main logical steps in a pipeline (e.g., Build, Test, Deploy).

# Each stage can contain multiple steps.
stages {
    stage('Build') {
        steps {
            echo 'Building the project...'
        }
    }
    stage('Test') {
        steps {
            echo 'Running tests...'
        }
    }
}

3. Steps
   Specifies the individual actions to be performed in a stage.

# Example steps:
1. Running shell commands: sh 'mvn clean install'
3. Echoing messages: echo 'Hello, Jenkins!'
3. Archiving files: archiveArtifacts artifacts: '**/target/*.jar'

steps {
    sh 'npm install'
    sh 'npm test'
}

4. Post
Defines actions to be executed after the pipeline or a specific stage completes.

# Sections:
always: Always runs regardless of the build status.
success: Runs only if the pipeline is successful.
failure: Runs only if the pipeline fails.
unstable: Runs if the build is marked as unstable.
aborted: Runs if the build is aborted.

5. Environment
Defines environment variables for the pipeline.
Variables can be used throughout the pipeline for configuration or to pass data.

environment {
    JAVA_HOME = '/usr/lib/jvm/java-11-openjdk'
    APP_ENV = 'production'
}

6.Tools
Specifies tools to be installed and made available in the environment (e.g., JDK, Maven).

tools {
    maven 'Maven 3.8.1'
}

7. Parameters
Allows user input at runtime for configurable pipeline execution.

# Examples:
choice: Dropdown with predefined options.
booleanParam: Checkbox for true/false.
string: Input text

8. Triggers
Automates pipeline execution based on events or schedules.
# Examples:
cron: Runs the pipeline on a schedule.
pollSCM: Triggers the pipeline when changes are detected in the source code.
# Example:
triggers {
    cron('H 2 * * 1-5') // Runs at 2 AM on weekdays
}

9. Input
Pauses the pipeline for manual approval or input.
input {
    message 'Deploy to production?'
    ok 'Yes, proceed'
}

10. Options
Configures specific behaviors for the pipeline, such as timeouts or retries.

options {
    timeout(time: 1, unit: 'HOURS')
    retry(3)
}

11. Pipeline Libraries
Allows the inclusion of shared libraries for reusable pipeline code.
@Library('my-shared-library') _


12. when condition
Controls conditional execution of stages.
# Conditions:
branch, environment, expression, etc.
stages {
    stage('Deploy') {
        when {
            branch 'main'
        }
        steps {
            echo 'Deploying to production...'
        }
    }
}

13.  Parallel
Executes multiple stages or steps concurrently.

14. Matrix
Runs a stage with different parameter combinations.

15. Retry
Retries a stage or step on failure.

16.  Lock
Manages resource locking for concurrency control.

17. Timestamps
Adds timestamps to the pipeline logs.
