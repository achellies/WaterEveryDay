.class public Lcom/ub/main/coupon/CouponListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CouponListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/Coupon;",
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
            "Lcom/ub/main/data/Coupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->selectPosition:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->context:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/ub/main/coupon/CouponListAdapter;->activity:Landroid/app/Activity;

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    move-object/from16 v13, p2

    .line 90
    .local v13, view:Landroid/view/View;
    new-instance v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;

    invoke-direct {v10, p0}, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;-><init>(Lcom/ub/main/coupon/CouponListAdapter;)V

    .line 91
    .local v10, holder:Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;
    if-nez v13, :cond_2

    .line 92
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 93
    const v0, 0x7f080087

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f080089

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f08008b

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->money:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f08008c

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->info:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f08008a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f080085

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f08008d

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 102
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ub/main/data/Coupon;

    .line 108
    .local v8, data:Lcom/ub/main/data/Coupon;
    if-eqz v8, :cond_0

    .line 109
    const-string v11, "0"

    .line 110
    .local v11, num:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getUse_nums_limit()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getUse_nums()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 111
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 114
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    .end local v11           #num:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->money:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getBrief()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getChannel_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6709\u6548\u671f\u81f3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getExpire_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v7

    .line 135
    .local v7, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v7, :cond_5

    .line 136
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 137
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 147
    :cond_1
    :goto_2
    return-object v13

    .line 104
    .end local v7           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v8           #data:Lcom/ub/main/data/Coupon;
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #holder:Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;
    check-cast v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;

    .restart local v10       #holder:Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 117
    .restart local v8       #data:Lcom/ub/main/data/Coupon;
    .restart local v11       #num:Ljava/lang/String;
    :cond_3
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 118
    iget v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->selectPosition:I

    if-ne v0, p1, :cond_4

    .line 119
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_4
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 139
    .end local v11           #num:Ljava/lang/String;
    .restart local v7       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_5
    iget-object v0, p0, Lcom/ub/main/coupon/CouponListAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f0200d1

    invoke-static {v0, v1}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 140
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

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

    invoke-virtual {v8}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v4, 0x7f0200d1

    iget-object v5, p0, Lcom/ub/main/coupon/CouponListAdapter;->activity:Landroid/app/Activity;

    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/ub/main/net/ImageLoadingTask2;

    iget-object v1, v10, Lcom/ub/main/coupon/CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

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
            "Lcom/ub/main/data/Coupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    iput-object p1, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponListAdapter;->notifyDataSetChanged()V

    .line 53
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
            "Lcom/ub/main/data/Coupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    iput-object p1, p0, Lcom/ub/main/coupon/CouponListAdapter;->datas:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 43
    iput p1, p0, Lcom/ub/main/coupon/CouponListAdapter;->selectPosition:I

    .line 44
    return-void
.end method
