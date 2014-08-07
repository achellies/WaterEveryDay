.class Lcom/ub/main/foodsale/FoodQuHuo$1;
.super Landroid/os/Handler;
.source "FoodQuHuo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodQuHuo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodQuHuo;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    .line 164
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/foodsale/FoodQuHuo$1;)Lcom/ub/main/foodsale/FoodQuHuo;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const v2, 0x7f060002

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 203
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo;->timeView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->access$0(Lcom/ub/main/foodsale/FoodQuHuo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodQuHuo;->access$1(Lcom/ub/main/foodsale/FoodQuHuo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->access$2(Lcom/ub/main/foodsale/FoodQuHuo;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodQuHuo;->access$2(Lcom/ub/main/foodsale/FoodQuHuo;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo;->iStep:I
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodQuHuo;->access$3(Lcom/ub/main/foodsale/FoodQuHuo;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 170
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->access$1(Lcom/ub/main/foodsale/FoodQuHuo;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 177
    const-string v1, "\u786e\u5b9a"

    .line 178
    new-instance v2, Lcom/ub/main/foodsale/FoodQuHuo$1$1;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodQuHuo$1$1;-><init>(Lcom/ub/main/foodsale/FoodQuHuo$1;)V

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const-string v1, "\u786e\u5b9a"

    .line 191
    new-instance v2, Lcom/ub/main/foodsale/FoodQuHuo$1$2;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodQuHuo$1$2;-><init>(Lcom/ub/main/foodsale/FoodQuHuo$1;)V

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
