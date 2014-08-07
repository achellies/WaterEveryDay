.class Lcom/ub/main/movie/SeatSelector$1;
.super Ljava/lang/Object;
.source "SeatSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/SeatSelector;->loadPanel(II)V
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
    iput-object p1, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    invoke-virtual {v1}, Lcom/ub/main/movie/SeatSelector;->getSelectedSeats_()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 117
    .local v0, selectedNum:I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 118
    check-cast v1, Lcom/ub/main/movie/Label;

    invoke-virtual {v1}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    move-object v1, p1

    check-cast v1, Lcom/ub/main/movie/Label;

    #calls: Lcom/ub/main/movie/SeatSelector;->setBallDeselectedStyle(Lcom/ub/main/movie/Label;)V
    invoke-static {v2, v1}, Lcom/ub/main/movie/SeatSelector;->access$0(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Label;)V

    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    #getter for: Lcom/ub/main/movie/SeatSelector;->seatSelListener:Lcom/ub/main/movie/SeatSelectListener;
    invoke-static {v1}, Lcom/ub/main/movie/SeatSelector;->access$3(Lcom/ub/main/movie/SeatSelector;)Lcom/ub/main/movie/SeatSelectListener;

    move-result-object v1

    check-cast v1, Lcom/ub/main/movie/MovieSeats;

    check-cast p1, Lcom/ub/main/movie/Label;

    .end local p1
    invoke-virtual {v1, p1, v0}, Lcom/ub/main/movie/MovieSeats;->seatsClickHandler(Lcom/ub/main/movie/Label;I)V

    .line 138
    return-void

    .line 122
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    move-object v1, p1

    check-cast v1, Lcom/ub/main/movie/Label;

    #calls: Lcom/ub/main/movie/SeatSelector;->setBallSelectedStyle(Lcom/ub/main/movie/Label;)V
    invoke-static {v2, v1}, Lcom/ub/main/movie/SeatSelector;->access$1(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Label;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 126
    check-cast v1, Lcom/ub/main/movie/Label;

    invoke-virtual {v1}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    move-object v1, p1

    check-cast v1, Lcom/ub/main/movie/Label;

    #calls: Lcom/ub/main/movie/SeatSelector;->setBallDeselectedStyle(Lcom/ub/main/movie/Label;)V
    invoke-static {v2, v1}, Lcom/ub/main/movie/SeatSelector;->access$0(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Label;)V

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector$1;->this$0:Lcom/ub/main/movie/SeatSelector;

    #getter for: Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/ub/main/movie/SeatSelector;->access$2(Lcom/ub/main/movie/SeatSelector;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 132
    const-string v2, "\u6700\u591a\u53ea\u80fd\u90095\u4e2a\u5ea7\u4f4d\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 133
    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
