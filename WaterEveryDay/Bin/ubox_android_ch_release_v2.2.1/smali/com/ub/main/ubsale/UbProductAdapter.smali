.class public Lcom/ub/main/ubsale/UbProductAdapter;
.super Landroid/widget/BaseAdapter;
.source "UbProductAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private softRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private url:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/util/Map;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    .line 61
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    .line 62
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    :cond_0
    iput-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    .line 308
    iput-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    .line 309
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 312
    :cond_1
    iput-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    .line 313
    iput-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    .line 314
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    move-object/from16 v14, p2

    .line 92
    .local v14, view:Landroid/view/View;
    const/4 v10, 0x0

    .line 93
    .local v10, holder:Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;
    if-nez v14, :cond_3

    .line 94
    new-instance v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;

    .end local v10           #holder:Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;
    invoke-direct {v10}, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;-><init>()V

    .line 95
    .restart local v10       #holder:Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 96
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03004f

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 97
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 98
    const/4 v1, -0x1

    .line 99
    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0800be

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    .line 104
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0800da

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    .line 106
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0800e0

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    .line 108
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0800d7

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0800db

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleM:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0800e1

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleR:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0800d8

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0800dc

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceM:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0800e2

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceR:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0800bf

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    .line 119
    const v0, 0x7f0800de

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    .line 120
    const v0, 0x7f0800e4

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    .line 122
    const v0, 0x7f0800c0

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0800dd

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0800e3

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {v14, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 132
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p1}, Lcom/ub/main/ubsale/UbProductAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/util/Map;

    .line 134
    .local v12, row:[Ljava/util/Map;
    const/4 v0, 0x0

    aget-object v0, v12, v0

    if-eqz v0, :cond_6

    .line 135
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move/from16 v8, p1

    .line 137
    .local v8, aa:I
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    mul-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    const-string v2, "price"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v0, 0x0

    aget-object v0, v12, v0

    const-string v1, "num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :goto_1
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    const v2, 0x7f020032

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 151
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    .end local v8           #aa:I
    :goto_2
    const/4 v0, 0x1

    aget-object v0, v12, v0

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleM:Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v1, v12, v1

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceM:Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v1, v12, v1

    const-string v2, "price"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v0, 0x1

    aget-object v0, v12, v0

    const-string v1, "num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_3
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 176
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    const v2, 0x7f020032

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 179
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    :goto_4
    const/4 v0, 0x2

    aget-object v0, v12, v0

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleR:Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, v12, v1

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceR:Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, v12, v1

    const-string v2, "price"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v0, 0x2

    aget-object v0, v12, v0

    const-string v1, "num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :goto_5
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    const v2, 0x7f020032

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 207
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    :goto_6
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 222
    .local v13, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    const/4 v9, 0x0

    .line 223
    .local v9, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    const/4 v0, 0x0

    aget-object v0, v12, v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_7
    invoke-static {v1, v0}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 225
    if-eqz v9, :cond_e

    .line 226
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 227
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 236
    :cond_0
    :goto_8
    const/4 v0, 0x1

    aget-object v0, v12, v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_9
    invoke-static {v1, v0}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 238
    if-eqz v9, :cond_11

    .line 239
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 240
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 249
    :cond_1
    :goto_a
    const/4 v0, 0x2

    aget-object v0, v12, v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_b
    invoke-static {v1, v0}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 251
    if-eqz v9, :cond_14

    .line 252
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 253
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 261
    :cond_2
    :goto_c
    new-instance v0, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, v13, v1}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    .line 262
    invoke-virtual {v14, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 263
    const/4 v12, 0x0

    check-cast v12, [Ljava/util/Map;

    .line 270
    .end local v9           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v12           #row:[Ljava/util/Map;
    .end local v13           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :goto_d
    const/4 v10, 0x0

    .line 271
    return-object v14

    .line 128
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #holder:Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;
    check-cast v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;

    .restart local v10       #holder:Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;
    goto/16 :goto_0

    .line 144
    .restart local v8       #aa:I
    .restart local v12       #row:[Ljava/util/Map;
    :cond_4
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 153
    :cond_5
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 155
    .end local v8           #aa:I
    :cond_6
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 172
    :cond_7
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, v12, v0

    const-string v2, "soldout"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 181
    :cond_8
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 183
    :cond_9
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceM:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleM:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 200
    :cond_a
    iget-object v1, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, v12, v0

    const-string v2, "soldout"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 209
    :cond_b
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    .line 213
    :cond_c
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->priceR:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->titleR:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 224
    .restart local v9       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v13       #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_d
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x3

    aget-object v0, v0, v2

    goto/16 :goto_7

    .line 229
    :cond_e
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    if-nez v1, :cond_f

    const/4 v2, 0x0

    :goto_e
    iget-object v3, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    iget-object v4, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const v5, 0x7f020032

    iget-object v6, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    sget-object v7, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_f
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x3

    aget-object v2, v1, v2

    goto :goto_e

    .line 237
    :cond_10
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    goto/16 :goto_9

    .line 242
    :cond_11
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v2, 0x0

    :goto_f
    iget-object v3, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    iget-object v4, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const v5, 0x7f020032

    iget-object v6, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    sget-object v7, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_12
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v1, v2

    goto :goto_f

    .line 250
    :cond_13
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x2

    aget-object v0, v0, v2

    goto/16 :goto_b

    .line 255
    :cond_14
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    if-nez v1, :cond_15

    const/4 v2, 0x0

    :goto_10
    iget-object v3, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    iget-object v4, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const v5, 0x7f020032

    iget-object v6, p0, Lcom/ub/main/ubsale/UbProductAdapter;->context:Landroid/app/Activity;

    sget-object v7, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_15
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x2

    aget-object v2, v1, v2

    goto :goto_10

    .line 265
    .end local v9           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v12           #row:[Ljava/util/Map;
    .end local v13           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_16
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, v10, Lcom/ub/main/ubsale/UbProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d
.end method

.method public setData(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/util/Map;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/util/Map;>;"
    iput-object p1, p0, Lcom/ub/main/ubsale/UbProductAdapter;->arrayList:Ljava/util/ArrayList;

    .line 68
    iput-object p2, p0, Lcom/ub/main/ubsale/UbProductAdapter;->url:[Ljava/lang/String;

    .line 69
    return-void
.end method
