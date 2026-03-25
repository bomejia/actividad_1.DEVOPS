#!/bin/bash
# ============================================================
#  deploy.sh — Script de despliegue manual a AWS S3
#  Actividad 1 - Fundamentos de DevOps - AWS Learner Lab
# ============================================================

BUCKET="mi-bucket-devops"
REGION="us-east-1"
SOURCE="src/"

echo "=================================================="
echo "  🚀 Iniciando despliegue a AWS S3"
echo "  Bucket  : s3://$BUCKET"
echo "  Región  : $REGION"
echo "  Fuente  : $SOURCE"
echo "=================================================="

# Verificar que AWS CLI está disponible
if ! command -v aws &> /dev/null; then
    echo "❌ ERROR: AWS CLI no está instalado o no está en el PATH."
    exit 1
fi

# Sincronizar archivos con S3
echo ""
echo "📦 Sincronizando archivos..."
aws s3 sync "$SOURCE" "s3://$BUCKET" \
    --delete \
    --acl public-read \
    --region "$REGION"

# Verificar resultado
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Despliegue completado exitosamente."
    echo ""
    echo "🌐 URL del sitio:"
    echo "   http://$BUCKET.s3-website-$REGION.amazonaws.com"
    echo ""
else
    echo ""
    echo "❌ ERROR: El despliegue falló. Revisa tus credenciales de AWS."
    exit 1
fi
