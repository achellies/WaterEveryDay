.class Lcom/ub/main/movie/SeatSelector$2;
.super Ljava/lang/Object;
.source "SeatSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/SeatSelector;->loadPanel([[Lcom/ub/main/data/movie/SeatData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/SeatSelector;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/SeatSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 203
    move-object v3, p1

    check-cast v3, Lcom/ub/main/movie/Seat;

    invoke-virtual {v3}, Lcom/ub/main/movie/Seat;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/ub/main/movie/Seat;

    invoke-virtual {v3}, Lcom/ub/main/movie/Seat;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local p1
    :cond_1
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    invoke-virtual {v3}, Lcom/ub/main/movie/SeatSelector;->getSelectedSeats()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .local v1, selectedNum:I
    move-object v3, p1

    .line 205
    check-cast v3, Lcom/ub/main/movie/Seat;

    invoke-virtual {v3}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x5

    .line 207
    .local v0, selMax:I
    :goto_1
    if-ge v1, v0, :cond_4

    move-object v3, p1

    .line 208
    check-cast v3, Lcom/ub/main/movie/Seat;

    invoke-virtual {v3}, Lcom/ub/main/movie/Seat;->isSelected_()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    move-object v3, p1

    check-cast v3, Lcom/ub/main/movie/Seat;

    #calls: Lcom/ub/main/movie/SeatSelector;->setSeatDeSelectedStyle(Lcom/ub/main/movie/Seat;)I
    invoke-static {v4, v3}, Lcom/ub/main/movie/SeatSelector;->access$4(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Seat;)I

    move-result v2

    .line 210
    .local v2, tmp:I
    sub-int/2addr v1, v2

    .line 226
    .end local v2           #tmp:I
    :goto_2
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    #getter for: Lcom/ub/main/movie/SeatSelector;->seatSelListener:Lcom/ub/main/movie/SeatSelectListener;
    invoke-static {v3}, Lcom/ub/main/movie/SeatSelector;->access$3(Lcom/ub/main/movie/SeatSelector;)Lcom/ub/main/movie/SeatSelectListener;

    move-result-object v3

    check-cast v3, Lcom/ub/main/movie/MovieSeats;

    check-cast p1, Lcom/ub/main/movie/Seat;

    .end local p1
    invoke-virtual {v3, p1, v1}, Lcom/ub/main/movie/MovieSeats;->seatsClickHandler(Lcom/ub/main/movie/Seat;I)V

    goto :goto_0

    .line 205
    .end local v0           #selMax:I
    .restart local p1
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 212
    .restart local v0       #selMax:I
    :cond_3
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    move-object v3, p1

    check-cast v3, Lcom/ub/main/movie/Seat;

    #calls: Lcom/ub/main/movie/SeatSelector;->setSeatSelectedStyle(Lcom/ub/main/movie/Seat;)I
    invoke-static {v4, v3}, Lcom/ub/main/movie/SeatSelector;->access$5(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Seat;)I

    move-result v2

    .line 213
    .restart local v2       #tmp:I
    add-int/2addr v1, v2

    goto :goto_2

    .end local v2           #tmp:I
    :cond_4
    move-object v3, p1

    .line 216
    check-cast v3, Lcom/ub/main/movie/Seat;

    invoke-virtual {v3}, Lcom/ub/main/movie/Seat;->isSelected_()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    move-object v3, p1

    check-cast v3, Lcom/ub/main/movie/Seat;

    #calls: Lcom/ub/main/movie/SeatSelector;->setSeatDeSelectedStyle(Lcom/ub/main/movie/Seat;)I
    invoke-static {v4, v3}, Lcom/ub/main/movie/SeatSelector;->access$4(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Seat;)I

    move-result v2

    .line 218
    .restart local v2       #tmp:I
    sub-int/2addr v1, v2

    goto :goto_2

    .line 220
    .end local v2           #tmp:I
    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector$2;->this$0:Lcom/ub/main/movie/SeatSelector;

    #getter for: Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/ub/main/movie/SeatSelector;->access$2(Lcom/ub/main/movie/SeatSelector;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 222
    const-string v4, "\u6700\u591a\u53ea\u80fd\u90095\u4e2a\u5ea7\u4f4d\uff01"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 223
    const-string v4, "\u786e\u5b9a"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_2
.end method
