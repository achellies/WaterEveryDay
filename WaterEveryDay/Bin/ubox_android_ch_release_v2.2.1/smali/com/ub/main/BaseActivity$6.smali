.class Lcom/ub/main/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/ub/main/BaseActivity$6;->this$0:Lcom/ub/main/BaseActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ub/main/BaseActivity$6;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v0}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 172
    iget-object v0, p0, Lcom/ub/main/BaseActivity$6;->this$0:Lcom/ub/main/BaseActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/BaseActivity;->setResult(I)V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 174
    iget-object v0, p0, Lcom/ub/main/BaseActivity$6;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v0}, Lcom/ub/main/BaseActivity;->finish()V

    .line 175
    return-void
.end method
