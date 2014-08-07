.class Lcom/ub/main/LaunchActivity$6;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/LaunchActivity;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/ub/main/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/LaunchActivity$6;)Lcom/ub/main/LaunchActivity;
    .locals 1
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 405
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;

    iget-object v2, v2, Lcom/ub/main/LaunchActivity;->updateUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;

    invoke-virtual {v1, v0}, Lcom/ub/main/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    const/4 v1, 0x0

    sput-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 409
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;

    invoke-virtual {v1}, Lcom/ub/main/LaunchActivity;->finish()V

    .line 420
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 413
    const-string v2, "\u5f53\u524d\u6ca1\u6709SD\u5361\uff0c\u8bf7\u653e\u7f6eSD\u5361\u540e\u91cd\u65b0\u518d\u8bd5\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 414
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ub/main/LaunchActivity$6$1;

    invoke-direct {v3, p0}, Lcom/ub/main/LaunchActivity$6$1;-><init>(Lcom/ub/main/LaunchActivity$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
