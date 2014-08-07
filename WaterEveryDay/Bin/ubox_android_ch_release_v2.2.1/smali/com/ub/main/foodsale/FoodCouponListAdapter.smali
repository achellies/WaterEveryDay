.class public Lcom/ub/main/foodsale/FoodCouponListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FoodCouponListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodCoupon;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private selectPosition:I


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
            "Lcom/ub/main/foodsale/FoodCoupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodCoupon;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->selectPosition:I

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->activity:Landroid/app/Activity;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    move-object/from16 v13, p2

    .line 85
    .local v13, view:Landroid/view/View;
    new-instance v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;

    invoke-direct {v10, p0}, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;-><init>(Lcom/ub/main/foodsale/FoodCouponListAdapter;)V

    .line 86
    .local v10, holder:Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;
    if-nez v13, :cond_2

    .line 87
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 88
    const v0, 0x7f080087

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 89
    iget-object v1, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f080089

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f08008b

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->money:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f08008c

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->info:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f08008a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f080085

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ub/main/foodsale/FoodCoupon;

    .line 103
    .local v8, data:Lcom/ub/main/foodsale/FoodCoupon;
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 107
    if-eqz v8, :cond_0

    .line 109
    const-string v11, "0"

    .line 110
    .local v11, num:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->use_nums_limit()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->use_nums()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 111
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->brief()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->money:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->status()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 120
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .end local v11           #num:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v7

    .line 135
    .local v7, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v7, :cond_5

    .line 136
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 137
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 147
    :cond_1
    :goto_2
    return-object v13

    .line 98
    .end local v7           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v8           #data:Lcom/ub/main/foodsale/FoodCoupon;
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #holder:Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;
    check-cast v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;

    .restart local v10       #holder:Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 123
    .restart local v8       #data:Lcom/ub/main/foodsale/FoodCoupon;
    .restart local v11       #num:Ljava/lang/String;
    :cond_3
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 124
    iget v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->selectPosition:I

    if-ne v0, p1, :cond_4

    .line 125
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_4
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 139
    .end local v11           #num:Ljava/lang/String;
    .restart local v7       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_5
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f0200d1

    invoke-static {v0, v1}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 140
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 143
    .local v12, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v8}, Lcom/ub/main/foodsale/FoodCoupon;->icon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v4, 0x7f0200d1

    iget-object v5, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->activity:Landroid/app/Activity;

    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/ub/main/net/ImageLoadingTask2;

    iget-object v1, v10, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, v12, v1}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    goto :goto_2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodCoupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodCoupon;>;"
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodCoupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodCoupon;>;"
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->datas:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 39
    iput p1, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter;->selectPosition:I

    .line 40
    return-void
.end method
