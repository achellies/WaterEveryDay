.class Lcom/ub/main/movie/CinemaSchedule$1;
.super Ljava/lang/Object;
.source "CinemaSchedule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/CinemaSchedule;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/CinemaSchedule;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/CinemaSchedule;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    .line 178
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

    .line 181
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 184
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 200
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/CinemaSchedule;->access$1(Lcom/ub/main/movie/CinemaSchedule;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    #calls: Lcom/ub/main/movie/CinemaSchedule;->getFilmPlan(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/CinemaSchedule;->access$2(Lcom/ub/main/movie/CinemaSchedule;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 206
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/CinemaSchedule;->access$1(Lcom/ub/main/movie/CinemaSchedule;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    #calls: Lcom/ub/main/movie/CinemaSchedule;->getFilmPlan(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/CinemaSchedule;->access$2(Lcom/ub/main/movie/CinemaSchedule;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 210
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/CinemaSchedule;->access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule$1;->this$0:Lcom/ub/main/movie/CinemaSchedule;

    #getter for: Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/CinemaSchedule;->access$1(Lcom/ub/main/movie/CinemaSchedule;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    #calls: Lcom/ub/main/movie/CinemaSchedule;->getFilmPlan(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/CinemaSchedule;->access$2(Lcom/ub/main/movie/CinemaSchedule;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x7f08006f
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
