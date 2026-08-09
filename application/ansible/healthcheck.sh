```bash
#!/bin/bash

echo "Checking container..."

if ! docker ps --format '{{.Names}}' | grep -q "^cicd-demo$"; then
    echo "❌ Container is not running"
    exit 1
fi

echo "✅ Container is running"

echo "Checking application..."

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080/)

if [ "$HTTP_STATUS" -ne 200 ]; then
    echo "❌ Application health check failed"
    echo "HTTP status: $HTTP_STATUS"
    exit 1
fi

echo "✅ Application is healthy"
echo "HTTP status: $HTTP_STATUS"

exit 0
```

