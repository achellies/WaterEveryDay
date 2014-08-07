.class Lcom/ub/main/BaseActivity$8;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/BaseActivity;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ub/main/BaseActivity$8;->this$0:Lcom/ub/main/BaseActivity;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/ub/main/BaseActivity$8;->this$0:Lcom/ub/main/BaseActivity;

    iget-object v0, v0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/ub/main/BaseActivity$8;->this$0:Lcom/ub/main/BaseActivity;

    iget-object v0, v0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    invoke-virtual {v0}, Lcom/ub/main/net/HttpStack;->CancelRequest()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/ub/main/BaseActivity$8;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v0}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 246
    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    .line 247
    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 248
    return-void
.end method
