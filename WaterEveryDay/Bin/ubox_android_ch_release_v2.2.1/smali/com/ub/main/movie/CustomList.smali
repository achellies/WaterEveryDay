.class public Lcom/ub/main/movie/CustomList;
.super Landroid/widget/LinearLayout;
.source "CustomList.java"


# instance fields
.field private center:I

.field private context:Landroid/content/Context;

.field private size:I

.field private sview:Landroid/widget/ScrollView;

.field private tvarray:[Lcom/ub/main/movie/Label;

.field private vbox:Landroid/widget/LinearLayout;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0x11

    iput v0, p0, Lcom/ub/main/movie/CustomList;->center:I

    .line 24
    const/4 v0, 0x7

    iput v0, p0, Lcom/ub/main/movie/CustomList;->size:I

    .line 29
    invoke-direct {p0, p1}, Lcom/ub/main/movie/CustomList;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0x11

    iput v0, p0, Lcom/ub/main/movie/CustomList;->center:I

    .line 24
    const/4 v0, 0x7

    iput v0, p0, Lcom/ub/main/movie/CustomList;->size:I

    .line 34
    invoke-direct {p0, p1}, Lcom/ub/main/movie/CustomList;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "txt"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ub/main/movie/CustomList;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/ub/main/movie/CustomList;->loadScrollView([Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ub/main/movie/CustomList;->context:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CustomList;->view:Landroid/view/View;

    .line 46
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->view:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/ub/main/movie/CustomList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->view:Landroid/view/View;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/ub/main/movie/CustomList;->sview:Landroid/widget/ScrollView;

    .line 48
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->view:Landroid/view/View;

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ub/main/movie/CustomList;->vbox:Landroid/widget/LinearLayout;

    .line 49
    return-void
.end method


# virtual methods
.method public getItemAt(I)Landroid/widget/TextView;
    .locals 2
    .parameter "index"

    .prologue
    .line 90
    iget v0, p0, Lcom/ub/main/movie/CustomList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    iget v1, p0, Lcom/ub/main/movie/CustomList;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItems()[Lcom/ub/main/movie/Label;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    return-object v0
.end method

.method public getSelectedItem()Lcom/ub/main/movie/Label;
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/ub/main/movie/CustomList;->size:I

    if-lt v0, v1, :cond_1

    .line 123
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 118
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    goto :goto_1

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedItemTxt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/ub/main/movie/CustomList;->size:I

    if-lt v0, v1, :cond_1

    .line 138
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 133
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ub/main/movie/Label;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadScrollView([Ljava/lang/String;)V
    .locals 8
    .parameter "txt"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x5

    .line 56
    array-length v1, p1

    iput v1, p0, Lcom/ub/main/movie/CustomList;->size:I

    .line 57
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->vbox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    iget v1, p0, Lcom/ub/main/movie/CustomList;->size:I

    new-array v1, v1, [Lcom/ub/main/movie/Label;

    iput-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/ub/main/movie/CustomList;->size:I

    if-lt v0, v1, :cond_0

    .line 75
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    new-instance v2, Lcom/ub/main/movie/Label;

    iget-object v3, p0, Lcom/ub/main/movie/CustomList;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ub/main/movie/Label;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 61
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/ub/main/movie/CustomList;->center:I

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setGravity(I)V

    .line 62
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setTextSize(F)V

    .line 65
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setTextColor(I)V

    .line 66
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, v6, v7, v6}, Lcom/ub/main/movie/Label;->setPadding(IIII)V

    .line 67
    if-nez v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setBackgroundResource(I)V

    .line 70
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setSelected(Z)V

    .line 71
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/Label;->setTextColor(I)V

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->vbox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v2, v2, v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBallBackgroudAt()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 102
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/ub/main/movie/CustomList;->tvarray:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/ub/main/movie/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
