.class public Lcom/ub/main/foodsale/UICornerListView;
.super Landroid/widget/ListView;
.source "UICornerListView.java"


# instance fields
.field private bottomSelector:Landroid/graphics/drawable/Drawable;

.field private selector:Landroid/graphics/drawable/Drawable;

.field private topBottomSelector:Landroid/graphics/drawable/Drawable;

.field private topSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/ub/main/foodsale/UICornerListView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/ub/main/foodsale/UICornerListView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/ub/main/foodsale/UICornerListView;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ub/main/foodsale/UICornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/UICornerListView;->topSelector:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p0}, Lcom/ub/main/foodsale/UICornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/UICornerListView;->topBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/ub/main/foodsale/UICornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/UICornerListView;->bottomSelector:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Lcom/ub/main/foodsale/UICornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/UICornerListView;->selector:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 68
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 69
    .local v2, y:I
    invoke-virtual {p0, v1, v2}, Lcom/ub/main/foodsale/UICornerListView;->pointToPosition(II)I

    move-result v0

    .line 71
    .local v0, itemnum:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 74
    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/ub/main/foodsale/UICornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/ub/main/foodsale/UICornerListView;->topBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/UICornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/ub/main/foodsale/UICornerListView;->topSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/UICornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/ub/main/foodsale/UICornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/ub/main/foodsale/UICornerListView;->bottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/UICornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/ub/main/foodsale/UICornerListView;->selector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/UICornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBottomSlector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ub/main/foodsale/UICornerListView;->bottomSelector:Landroid/graphics/drawable/Drawable;

    .line 46
    return-void
.end method

.method public setMySelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ub/main/foodsale/UICornerListView;->selector:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method

.method public setTopBottomSlector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ub/main/foodsale/UICornerListView;->topBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method

.method public setTopSlector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ub/main/foodsale/UICornerListView;->topSelector:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method
