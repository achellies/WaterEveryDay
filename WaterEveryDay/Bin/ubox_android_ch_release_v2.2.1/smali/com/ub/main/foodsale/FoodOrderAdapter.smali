.class public Lcom/ub/main/foodsale/FoodOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FoodOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodOrderData;",
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
            "Lcom/ub/main/foodsale/FoodOrderData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodOrderData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->context:Landroid/app/Activity;

    .line 57
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->softRef:Ljava/lang/ref/SoftReference;

    .line 58
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->softRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    :cond_0
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    .line 245
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->context:Landroid/app/Activity;

    .line 246
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->softRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->softRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 249
    :cond_1
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->softRef:Ljava/lang/ref/SoftReference;

    .line 250
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    .line 251
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    move-object/from16 v18, p2

    .line 87
    .local v18, view:Landroid/view/View;
    const/4 v14, 0x0

    .line 88
    .local v14, holder:Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;
    if-nez v18, :cond_1

    .line 89
    new-instance v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;

    .end local v14           #holder:Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;
    invoke-direct {v14}, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;-><init>()V

    .line 90
    .restart local v14       #holder:Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 91
    .local v15, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 92
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 93
    const/4 v2, -0x1

    .line 94
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 92
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const v1, 0x7f0800be

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    .line 101
    const v1, 0x7f0800d7

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0800d8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0800bf

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    .line 107
    const v1, 0x7f0800c0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    .line 109
    const v1, 0x7f0800c1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->bianhao:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0800c2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->qucantime:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0800c3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->yudingtime:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0800c4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->foodinfo:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0800c5

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0800c9

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->notice:Landroid/widget/TextView;

    .line 116
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ub/main/foodsale/FoodOrderData;

    .line 124
    .local v12, data:Lcom/ub/main/foodsale/FoodOrderData;
    if-eqz v12, :cond_6

    .line 126
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->bianhao:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->vmid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->qucantime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->created()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->time_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->yudingtime:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->created()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->foodinfo:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->food_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->price:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->price()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v9, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9000\u8ba2\u8bf7\u4ee5\u670d\u52a1\u5668\u65f6\u95f4\u4e3a\u51c6\uff0c\u53d6\u9910\u65f6\u95f4\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->earliest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 132
    .local v9, buffer:Ljava/lang/StringBuffer;
    const-string v1, "\u81f3"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->latest()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->notice:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v1, 0x7f0800c6

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 143
    .local v16, operation:Landroid/view/View;
    const v1, 0x7f0800c8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 144
    .local v11, cancel:Landroid/widget/TextView;
    const v1, 0x7f0800c7

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 146
    .local v13, get:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 148
    const v1, 0x7f04000e

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    const v1, 0x7f04000e

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->type()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 155
    const v1, 0x7f020050

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 170
    :goto_1
    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->type()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 171
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008d

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_2
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    iget-object v2, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    const v3, 0x7f020031

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 180
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    .end local v9           #buffer:Ljava/lang/StringBuffer;
    .end local v11           #cancel:Landroid/widget/TextView;
    .end local v13           #get:Landroid/widget/TextView;
    .end local v16           #operation:Landroid/view/View;
    :goto_3
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 194
    .local v17, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    const/4 v10, 0x0

    .line 195
    .local v10, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v12, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->picBig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v10

    .line 197
    if-eqz v10, :cond_7

    .line 198
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 199
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 208
    :cond_0
    :goto_4
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v1, v0, v2}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    .line 209
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    .end local v10           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v12           #data:Lcom/ub/main/foodsale/FoodOrderData;
    .end local v17           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :goto_5
    const/4 v14, 0x0

    .line 215
    return-object v18

    .line 118
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #holder:Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;
    check-cast v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;

    .restart local v14       #holder:Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;
    goto/16 :goto_0

    .line 159
    .restart local v9       #buffer:Ljava/lang/StringBuffer;
    .restart local v11       #cancel:Landroid/widget/TextView;
    .restart local v12       #data:Lcom/ub/main/foodsale/FoodOrderData;
    .restart local v13       #get:Landroid/widget/TextView;
    .restart local v16       #operation:Landroid/view/View;
    :cond_2
    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    const v1, 0x7f02004f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 166
    :cond_3
    const v1, 0x7f02004e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 173
    :cond_4
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 182
    :cond_5
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 184
    .end local v9           #buffer:Ljava/lang/StringBuffer;
    .end local v11           #cancel:Landroid/widget/TextView;
    .end local v13           #get:Landroid/widget/TextView;
    .end local v16           #operation:Landroid/view/View;
    :cond_6
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->priceL:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->titleL:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 201
    .restart local v10       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v17       #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_7
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->picBig()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconL:Landroid/widget/ImageView;

    iget-object v5, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->progressL:Landroid/widget/ProgressBar;

    const v6, 0x7f020031

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ub/main/foodsale/FoodOrderAdapter;->context:Landroid/app/Activity;

    sget-object v8, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v12}, Lcom/ub/main/foodsale/FoodOrderData;->type()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ub/main/net/ImageLoadingTaskInfo;->setGrayBitmap(Z)Lcom/ub/main/net/ImageLoadingTaskInfo;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 211
    .end local v10           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v12           #data:Lcom/ub/main/foodsale/FoodOrderData;
    .end local v17           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_9
    iget-object v1, v14, Lcom/ub/main/foodsale/FoodOrderAdapter$ViewHolder;->iconLBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodOrderData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodOrderData;>;"
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodOrderAdapter;->arrayList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodOrderAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method
