.class Lcom/ub/main/movie/MovieCinema$1;
.super Ljava/lang/Object;
.source "MovieCinema.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieCinema;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieCinema;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieCinema;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 219
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 229
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 232
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    iget-object v1, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/MovieCinema;->access$1(Lcom/ub/main/movie/MovieCinema;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    #calls: Lcom/ub/main/movie/MovieCinema;->getFilmPlan(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/MovieCinema;->access$2(Lcom/ub/main/movie/MovieCinema;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #setter for: Lcom/ub/main/movie/MovieCinema;->dateIndex:I
    invoke-static {v0, v2}, Lcom/ub/main/movie/MovieCinema;->access$3(Lcom/ub/main/movie/MovieCinema;I)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    iget-object v1, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/MovieCinema;->access$1(Lcom/ub/main/movie/MovieCinema;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    #calls: Lcom/ub/main/movie/MovieCinema;->getFilmPlan(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/MovieCinema;->access$2(Lcom/ub/main/movie/MovieCinema;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #setter for: Lcom/ub/main/movie/MovieCinema;->dateIndex:I
    invoke-static {v0, v3}, Lcom/ub/main/movie/MovieCinema;->access$3(Lcom/ub/main/movie/MovieCinema;I)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 247
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieCinema;->access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    iget-object v1, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #getter for: Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/MovieCinema;->access$1(Lcom/ub/main/movie/MovieCinema;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    #calls: Lcom/ub/main/movie/MovieCinema;->getFilmPlan(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/MovieCinema;->access$2(Lcom/ub/main/movie/MovieCinema;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema$1;->this$0:Lcom/ub/main/movie/MovieCinema;

    #setter for: Lcom/ub/main/movie/MovieCinema;->dateIndex:I
    invoke-static {v0, v4}, Lcom/ub/main/movie/MovieCinema;->access$3(Lcom/ub/main/movie/MovieCinema;I)V

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x7f080112
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
