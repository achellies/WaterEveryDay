.class Lcom/ub/main/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/BaseActivity;->HttpResponseOk(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ub/main/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/BaseActivity$4;->this$0:Lcom/ub/main/BaseActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/ub/main/BaseActivity$4;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v1}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 151
    iget-object v1, p0, Lcom/ub/main/BaseActivity$4;->this$0:Lcom/ub/main/BaseActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ub/main/BaseActivity;->setResult(I)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    .line 153
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ub/main/BaseActivity$4;->this$0:Lcom/ub/main/BaseActivity;

    iget-object v2, v2, Lcom/ub/main/BaseActivity;->updateUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 152
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ub/main/BaseActivity$4;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/ub/main/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    const/4 v1, 0x0

    sput-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 156
    iget-object v1, p0, Lcom/ub/main/BaseActivity$4;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v1}, Lcom/ub/main/BaseActivity;->finish()V

    .line 157
    return-void
.end method
