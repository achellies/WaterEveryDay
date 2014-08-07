.class Lcom/ub/main/login/ForgetPswVerifycode$1;
.super Landroid/os/Handler;
.source "ForgetPswVerifycode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/login/ForgetPswVerifycode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/ForgetPswVerifycode;


# direct methods
.method constructor <init>(Lcom/ub/main/login/ForgetPswVerifycode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->remain:I
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$0(Lcom/ub/main/login/ForgetPswVerifycode;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/ub/main/login/ForgetPswVerifycode;->remain:I
    invoke-static {v0, v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$1(Lcom/ub/main/login/ForgetPswVerifycode;I)V

    .line 89
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->remain:I
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$0(Lcom/ub/main/login/ForgetPswVerifycode;)I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$2(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->text_code_bt:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/login/ForgetPswVerifycode;->access$3(Lcom/ub/main/login/ForgetPswVerifycode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->remain:I
    invoke-static {v2}, Lcom/ub/main/login/ForgetPswVerifycode;->access$0(Lcom/ub/main/login/ForgetPswVerifycode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v3, v0, v1}, Lcom/ub/main/login/ForgetPswVerifycode$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$2(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$2(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$2(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->text_code_bt:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$3(Lcom/ub/main/login/ForgetPswVerifycode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-virtual {v0, v1, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$1;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    invoke-virtual {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->dismissLoadingDialog()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
