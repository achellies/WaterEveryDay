.class Lcom/ub/main/BaseActivity$7;
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
    iput-object p1, p0, Lcom/ub/main/BaseActivity$7;->this$0:Lcom/ub/main/BaseActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ub/main/BaseActivity$7;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v0}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 181
    iget-object v0, p0, Lcom/ub/main/BaseActivity$7;->this$0:Lcom/ub/main/BaseActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/BaseActivity;->setResult(I)V

    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 183
    iget-object v0, p0, Lcom/ub/main/BaseActivity$7;->this$0:Lcom/ub/main/BaseActivity;

    invoke-virtual {v0}, Lcom/ub/main/BaseActivity;->finish()V

    .line 184
    return-void
.end method
