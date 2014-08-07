.class Lcom/ub/main/ubsale/UbQuHuo$1;
.super Landroid/os/Handler;
.source "UbQuHuo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/ubsale/UbQuHuo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbQuHuo;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/ubsale/UbQuHuo$1;)Lcom/ub/main/ubsale/UbQuHuo;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const v2, 0x7f060002

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->timeView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$0(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->iTime:I
    invoke-static {v1}, Lcom/ub/main/ubsale/UbQuHuo;->access$1(Lcom/ub/main/ubsale/UbQuHuo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$2(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/ub/main/ubsale/UbQuHuo;->access$2(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->iStep:I
    invoke-static {v2}, Lcom/ub/main/ubsale/UbQuHuo;->access$3(Lcom/ub/main/ubsale/UbQuHuo;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 188
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->iTime:I
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$1(Lcom/ub/main/ubsale/UbQuHuo;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    const-string v1, "\u786e\u5b9a"

    .line 196
    new-instance v2, Lcom/ub/main/ubsale/UbQuHuo$1$1;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbQuHuo$1$1;-><init>(Lcom/ub/main/ubsale/UbQuHuo$1;)V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 205
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    const-string v1, "\u786e\u5b9a"

    .line 209
    new-instance v2, Lcom/ub/main/ubsale/UbQuHuo$1$2;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbQuHuo$1$2;-><init>(Lcom/ub/main/ubsale/UbQuHuo$1;)V

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
