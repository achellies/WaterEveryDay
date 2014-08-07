.class Lcom/ub/main/login/RegisterMain$1;
.super Landroid/os/Handler;
.source "RegisterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/login/RegisterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/RegisterMain;


# direct methods
.method constructor <init>(Lcom/ub/main/login/RegisterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->remain:I
    invoke-static {v0}, Lcom/ub/main/login/RegisterMain;->access$0(Lcom/ub/main/login/RegisterMain;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/ub/main/login/RegisterMain;->remain:I
    invoke-static {v0, v1}, Lcom/ub/main/login/RegisterMain;->access$1(Lcom/ub/main/login/RegisterMain;I)V

    .line 58
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->remain:I
    invoke-static {v0}, Lcom/ub/main/login/RegisterMain;->access$0(Lcom/ub/main/login/RegisterMain;)I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/RegisterMain;->access$2(Lcom/ub/main/login/RegisterMain;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u53d1\u9a8c\u8bc1\u7801 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->remain:I
    invoke-static {v2}, Lcom/ub/main/login/RegisterMain;->access$0(Lcom/ub/main/login/RegisterMain;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v3, v0, v1}, Lcom/ub/main/login/RegisterMain$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/RegisterMain;->access$2(Lcom/ub/main/login/RegisterMain;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/RegisterMain;->access$2(Lcom/ub/main/login/RegisterMain;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    #getter for: Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/RegisterMain;->access$2(Lcom/ub/main/login/RegisterMain;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u91cd\u53d1\u9a8c\u8bc1\u7801 "

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    iget-object v1, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-virtual {v0, v1, v2}, Lcom/ub/main/login/RegisterMain;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain$1;->this$0:Lcom/ub/main/login/RegisterMain;

    invoke-virtual {v0}, Lcom/ub/main/login/RegisterMain;->dismissLoadingDialog()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
