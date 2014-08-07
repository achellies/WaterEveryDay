.class Lcom/ub/main/login/RegisterUI$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisterUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/login/RegisterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/RegisterUI;


# direct methods
.method constructor <init>(Lcom/ub/main/login/RegisterUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/RegisterUI$1;->this$0:Lcom/ub/main/login/RegisterUI;

    .line 131
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterUI$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI$1;->this$0:Lcom/ub/main/login/RegisterUI;

    invoke-virtual {v0}, Lcom/ub/main/login/RegisterUI;->dismissLoadingDialog()V

    .line 144
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI$1;->this$0:Lcom/ub/main/login/RegisterUI;

    const-string v1, "\u6ce8\u518c\u77ed\u4fe1\u53d1\u9001\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI$1;->this$0:Lcom/ub/main/login/RegisterUI;

    invoke-virtual {v0}, Lcom/ub/main/login/RegisterUI;->dismissLoadingDialog()V

    .line 139
    const-string v0, "\u6ce8\u518c\u77ed\u4fe1\u5df2\u53d1\u9001\uff0c\u8bf7\u7b49\u5f85\u786e\u8ba4\u77ed\u4fe1"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI$1;->this$0:Lcom/ub/main/login/RegisterUI;

    invoke-virtual {v0}, Lcom/ub/main/login/RegisterUI;->finish()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
