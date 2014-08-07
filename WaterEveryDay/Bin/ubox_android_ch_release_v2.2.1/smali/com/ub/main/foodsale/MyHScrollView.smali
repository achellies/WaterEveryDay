.class public Lcom/ub/main/foodsale/MyHScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyHScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;
    }
.end annotation


# instance fields
.field private observer:Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 27
    iget-object v0, p0, Lcom/ub/main/foodsale/MyHScrollView;->observer:Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/ub/main/foodsale/MyHScrollView;->observer:Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;

    invoke-interface {v0}, Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;->viewScrolledToLeft()V

    .line 35
    :goto_0
    const-string v0, "ttttttttttttttttttttttttttttttt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ub/main/foodsale/MyHScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void

    .line 30
    :cond_1
    sget v0, Lcom/ub/main/util/UIConfig;->SCREEN_WIDTH:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/ub/main/foodsale/MyHScrollView;->computeHorizontalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 31
    iget-object v0, p0, Lcom/ub/main/foodsale/MyHScrollView;->observer:Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;

    invoke-interface {v0}, Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;->viewScrolledToRight()V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/ub/main/foodsale/MyHScrollView;->observer:Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;

    invoke-interface {v0}, Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;->viewScrolledToOther()V

    goto :goto_0
.end method

.method public setObserver(Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;)V
    .locals 0
    .parameter "ob"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ub/main/foodsale/MyHScrollView;->observer:Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;

    .line 43
    return-void
.end method
