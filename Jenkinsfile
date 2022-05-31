pipeline {

  agent {
    any {
    }
  }

  stages {
     stage('Deploy') {
            steps {
                withKubeConfig([credentialsId: 'aks-config']) {
                    sh 'alias k="kubectl --namespace michael"'

                    script {
                        if (ACTION == 'deploy') {
                            echo '### HELM DEPLOY ###'
                            sh 'kubectl get pods --namespace michael'
                            sh 'helm install michael-hw simple-web/ --values simple-web/values.yaml --namespace michael'
                        } else {
                            echo '### HELM DESTROY ###'
                            sh 'helm uninstall michael-hw --namespace michael'
                        }
                    }
                }
            }
        }
    }
}

// install plugin kubernetes-cli for authentication
// add global secret GH token [GH app]
// add .kubeconfig to global secret [file]

