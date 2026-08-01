# Final Project Architecture

                    DEVELOPER
                        │
                        ▼
                  ┌──────────┐
                  │  GitHub   │
                  └─────┬────┘
                        │ Webhook
                        ▼
                 ┌─────────────┐
                 │   Jenkins   │
                 └──────┬──────┘
                        │
          ┌─────────────┼─────────────┐
          ▼             ▼             ▼
       Checkout       Build          Test
          │          Maven          JUnit
          └─────────────┬─────────────┘
                        ▼
                   SonarQube
                        │
                   Quality Gate
                        │
                        ▼
                  Nexus Repository
                        │
                     Artifact
                        │
                        ▼
                  Docker Build
                        │
                        ▼
                  Docker Image
                        │
                        ▼
                  STAGING SERVER
                        │
                  Integration Tests
                        │
                  Manual Approval
                        │
                        ▼
                 PRODUCTION SERVER
                        │
                        ▼
                    Monitoring




