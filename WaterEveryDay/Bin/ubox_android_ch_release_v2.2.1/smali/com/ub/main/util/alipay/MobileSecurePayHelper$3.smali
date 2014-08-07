.class Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/util/alipay/MobileSecurePayHelper;->showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;

.field private final synthetic val$cachePath:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ub/main/util/alipay/MobileSecurePayHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;

    iput-object p2, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;->val$cachePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;->val$context:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    const-string v1, "777"

    iget-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;->val$cachePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ub/main/util/alipay/BaseHelper;->chmod(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    const-string v2, "application/vnd.android.package-archive"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
