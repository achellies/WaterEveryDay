.class public Lcom/ub/main/foodsale/FoodProductAdapter;
.super Landroid/widget/BaseAdapter;
.source "FoodProductAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private isTimeOut:Z

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
            "<",
            "Lcom/ub/main/foodsale/FoodData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->isTimeOut:Z

    .line 59
    iput-object p2, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    .line 61
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    .line 62
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    :cond_0
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    .line 340
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    .line 341
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 344
    :cond_1
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->softRef:Ljava/lang/ref/SoftReference;

    .line 345
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    .line 346
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0x3

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

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
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    move-object/from16 v21, p2

    .line 92
    .local v21, view:Landroid/view/View;
    const/4 v12, 0x0

    .line 93
    .local v12, holder:Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;
    if-nez v21, :cond_4

    .line 94
    new-instance v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;

    .end local v12           #holder:Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;
    invoke-direct {v12}, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;-><init>()V

    .line 95
    .restart local v12       #holder:Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 96
    .local v15, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 97
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 98
    const/4 v2, -0x1

    .line 99
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 97
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0800be

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    .line 104
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0800da

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    .line 106
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0800e0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    .line 108
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0800d7

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0800db

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleM:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0800e1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleR:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0800d8

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0800dc

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceM:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f0800e2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceR:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0800bf

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    .line 119
    const v1, 0x7f0800de

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    .line 120
    const v1, 0x7f0800e4

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    .line 122
    const v1, 0x7f0800c0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    .line 123
    const v1, 0x7f0800dd

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    .line 124
    const v1, 0x7f0800e3

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    .line 126
    const v1, 0x7f0800d6

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->left:Landroid/view/View;

    .line 127
    const v1, 0x7f0800d9

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->mid:Landroid/view/View;

    .line 128
    const v1, 0x7f0800df

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->right:Landroid/view/View;

    .line 130
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->left:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->mid:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->right:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 141
    mul-int/lit8 v13, p1, 0x3

    .line 143
    .local v13, index:I
    const/4 v11, 0x0

    .local v11, firstGray:Z
    const/16 v17, 0x0

    .local v17, secondGray:Z
    const/16 v20, 0x0

    .line 145
    .local v20, thirdGray:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    add-int/lit8 v14, v13, 0x1

    .end local v13           #index:I
    .local v14, index:I
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ub/main/foodsale/FoodData;

    .line 147
    .local v10, first:Lcom/ub/main/foodsale/FoodData;
    if-eqz v10, :cond_8

    .line 148
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    mul-int/lit8 v2, p1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/ub/main/foodsale/FoodData;->food_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ub/main/foodsale/FoodData;->sellPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v10}, Lcom/ub/main/foodsale/FoodData;->goods_num()I

    move-result v1

    if-gtz v1, :cond_6

    .line 154
    const/4 v11, 0x1

    .line 155
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->isTimeOut:Z

    if-eqz v1, :cond_5

    const v1, 0x7f02008d

    :goto_1
    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_2
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 163
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    const v3, 0x7f020031

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 166
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    :goto_3
    const/16 v16, 0x0

    .line 179
    .local v16, second:Lcom/ub/main/foodsale/FoodData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    add-int/lit8 v13, v14, 0x1

    .end local v14           #index:I
    .restart local v13       #index:I
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #second:Lcom/ub/main/foodsale/FoodData;
    check-cast v16, Lcom/ub/main/foodsale/FoodData;

    .restart local v16       #second:Lcom/ub/main/foodsale/FoodData;
    move v14, v13

    .line 181
    .end local v13           #index:I
    .restart local v14       #index:I
    :cond_0
    if-eqz v16, :cond_c

    .line 182
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleM:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodData;->food_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceM:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodData;->sellPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodData;->goods_num()I

    move-result v1

    if-gtz v1, :cond_a

    .line 188
    const/16 v17, 0x1

    .line 189
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->isTimeOut:Z

    if-eqz v1, :cond_9

    const v1, 0x7f02008d

    :goto_4
    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_5
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 198
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    const v3, 0x7f020031

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 201
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    :goto_6
    const/16 v19, 0x0

    .line 214
    .local v19, third:Lcom/ub/main/foodsale/FoodData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_15

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    add-int/lit8 v13, v14, 0x1

    .end local v14           #index:I
    .restart local v13       #index:I
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #third:Lcom/ub/main/foodsale/FoodData;
    check-cast v19, Lcom/ub/main/foodsale/FoodData;

    .line 216
    .restart local v19       #third:Lcom/ub/main/foodsale/FoodData;
    :goto_7
    if-eqz v19, :cond_10

    .line 217
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 219
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleR:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/ub/main/foodsale/FoodData;->food_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceR:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/ub/main/foodsale/FoodData;->sellPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual/range {v19 .. v19}, Lcom/ub/main/foodsale/FoodData;->goods_num()I

    move-result v1

    if-gtz v1, :cond_e

    .line 223
    const/16 v20, 0x1

    .line 224
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->isTimeOut:Z

    if-eqz v1, :cond_d

    const v1, 0x7f02008d

    :goto_8
    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :goto_9
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 232
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 233
    iget-object v2, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 234
    const v3, 0x7f020031

    .line 233
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 235
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    :goto_a
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v18, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    const/4 v9, 0x0

    .line 252
    .local v9, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v10, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v10}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 254
    if-eqz v9, :cond_11

    .line 255
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 256
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 265
    :cond_1
    :goto_b
    if-eqz v16, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 267
    if-eqz v9, :cond_12

    .line 268
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 269
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 278
    :cond_2
    :goto_c
    if-eqz v19, :cond_3

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 280
    if-eqz v9, :cond_13

    .line 281
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 282
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 290
    :cond_3
    :goto_d
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move-object/from16 v0, v18

    invoke-direct {v1, v0, v2}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    .line 291
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 298
    .end local v9           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v10           #first:Lcom/ub/main/foodsale/FoodData;
    .end local v11           #firstGray:Z
    .end local v13           #index:I
    .end local v16           #second:Lcom/ub/main/foodsale/FoodData;
    .end local v17           #secondGray:Z
    .end local v18           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    .end local v19           #third:Lcom/ub/main/foodsale/FoodData;
    .end local v20           #thirdGray:Z
    :goto_e
    const/4 v12, 0x0

    .line 299
    return-object v21

    .line 132
    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #holder:Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;
    check-cast v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;

    .restart local v12       #holder:Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;
    goto/16 :goto_0

    .line 156
    .restart local v10       #first:Lcom/ub/main/foodsale/FoodData;
    .restart local v11       #firstGray:Z
    .restart local v14       #index:I
    .restart local v17       #secondGray:Z
    .restart local v20       #thirdGray:Z
    :cond_5
    const v1, 0x7f02008e

    goto/16 :goto_1

    .line 158
    :cond_6
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 168
    :cond_7
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 170
    :cond_8
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->left:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 190
    .restart local v16       #second:Lcom/ub/main/foodsale/FoodData;
    :cond_9
    const v1, 0x7f02008e

    goto/16 :goto_4

    .line 192
    :cond_a
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 203
    :cond_b
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    .line 205
    :cond_c
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceM:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleM:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->mid:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 225
    .end local v14           #index:I
    .restart local v13       #index:I
    .restart local v19       #third:Lcom/ub/main/foodsale/FoodData;
    :cond_d
    const v1, 0x7f02008e

    goto/16 :goto_8

    .line 227
    :cond_e
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 237
    :cond_f
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_a

    .line 241
    :cond_10
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->priceR:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->titleR:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->right:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 258
    .restart local v9       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v18       #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_11
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 259
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v10}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    iget-object v5, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const v6, 0x7f020031

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    sget-object v8, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v1, v11}, Lcom/ub/main/net/ImageLoadingTaskInfo;->setGrayBitmap(Z)Lcom/ub/main/net/ImageLoadingTaskInfo;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 271
    :cond_12
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 272
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconM:Landroid/widget/ImageView;

    iget-object v5, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressM:Landroid/widget/ProgressBar;

    const v6, 0x7f020031

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    sget-object v8, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/ub/main/net/ImageLoadingTaskInfo;->setGrayBitmap(Z)Lcom/ub/main/net/ImageLoadingTaskInfo;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 284
    :cond_13
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 285
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconR:Landroid/widget/ImageView;

    iget-object v5, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->progressR:Landroid/widget/ProgressBar;

    const v6, 0x7f020031

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ub/main/foodsale/FoodProductAdapter;->context:Landroid/app/Activity;

    sget-object v8, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/ub/main/net/ImageLoadingTaskInfo;->setGrayBitmap(Z)Lcom/ub/main/net/ImageLoadingTaskInfo;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 293
    .end local v9           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v10           #first:Lcom/ub/main/foodsale/FoodData;
    .end local v11           #firstGray:Z
    .end local v13           #index:I
    .end local v16           #second:Lcom/ub/main/foodsale/FoodData;
    .end local v17           #secondGray:Z
    .end local v18           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    .end local v19           #third:Lcom/ub/main/foodsale/FoodData;
    .end local v20           #thirdGray:Z
    :cond_14
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconMBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodProductAdapter$ViewHolder;->iconRBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .restart local v10       #first:Lcom/ub/main/foodsale/FoodData;
    .restart local v11       #firstGray:Z
    .restart local v14       #index:I
    .restart local v16       #second:Lcom/ub/main/foodsale/FoodData;
    .restart local v17       #secondGray:Z
    .restart local v19       #third:Lcom/ub/main/foodsale/FoodData;
    .restart local v20       #thirdGray:Z
    :cond_15
    move v13, v14

    .end local v14           #index:I
    .restart local v13       #index:I
    goto/16 :goto_7
.end method

.method public setData(Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodData;>;"
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->arrayList:Ljava/util/ArrayList;

    .line 67
    iput-boolean p2, p0, Lcom/ub/main/foodsale/FoodProductAdapter;->isTimeOut:Z

    .line 68
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodProductAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method
