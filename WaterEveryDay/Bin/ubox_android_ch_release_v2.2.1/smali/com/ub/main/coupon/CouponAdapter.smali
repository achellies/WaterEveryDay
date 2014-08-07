.class public Lcom/ub/main/coupon/CouponAdapter;
.super Landroid/widget/BaseAdapter;
.source "CouponAdapter.java"


# instance fields
.field private context:Landroid/app/Activity;

.field datas:Ljava/util/ArrayList;
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

.field private status:Ljava/lang/String;

.field private tag:Ljava/lang/String;


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
    .line 43
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const-string v0, "CouponAdapter"

    iput-object v0, p0, Lcom/ub/main/coupon/CouponAdapter;->tag:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/coupon/CouponAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/ub/main/coupon/CouponAdapter;->context:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/coupon/CouponAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ub/main/coupon/CouponAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ub/main/coupon/CouponAdapter;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    const/4 v4, 0x0

    .line 79
    .local v4, info_image:Landroid/widget/ImageView;
    const/4 v14, 0x0

    .line 81
    .local v14, info_newcoupon_icom:Landroid/widget/ImageView;
    const/16 v22, 0x0

    .line 82
    .local v22, tvinfo_title:Landroid/widget/TextView;
    const/16 v20, 0x0

    .line 83
    .local v20, tvinfo_num:Landroid/widget/TextView;
    const/16 v18, 0x0

    .line 84
    .local v18, tvinfo_brief:Landroid/widget/TextView;
    const/16 v19, 0x0

    .line 85
    .local v19, tvinfo_channel:Landroid/widget/TextView;
    const/16 v21, 0x0

    .line 86
    .local v21, tvinfo_time:Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 88
    .local v8, bnt_get:Landroid/widget/Button;
    const/4 v13, 0x0

    .line 89
    .local v13, holder:Landroid/view/View;
    if-nez p2, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/coupon/CouponAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 94
    :goto_0
    const v1, 0x7f080075

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #info_image:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 95
    .restart local v4       #info_image:Landroid/widget/ImageView;
    const v1, 0x7f080077

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #tvinfo_title:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 96
    .restart local v22       #tvinfo_title:Landroid/widget/TextView;
    const v1, 0x7f080078

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tvinfo_num:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 97
    .restart local v20       #tvinfo_num:Landroid/widget/TextView;
    const v1, 0x7f080079

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18           #tvinfo_brief:Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 98
    .restart local v18       #tvinfo_brief:Landroid/widget/TextView;
    const v1, 0x7f08007a

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tvinfo_channel:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 99
    .restart local v19       #tvinfo_channel:Landroid/widget/TextView;
    const v1, 0x7f08007b

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #tvinfo_time:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 100
    .restart local v21       #tvinfo_time:Landroid/widget/TextView;
    const v1, 0x7f08007c

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #bnt_get:Landroid/widget/Button;
    check-cast v8, Landroid/widget/Button;

    .line 101
    .restart local v8       #bnt_get:Landroid/widget/Button;
    const v1, 0x7f08007d

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #info_newcoupon_icom:Landroid/widget/ImageView;
    check-cast v14, Landroid/widget/ImageView;

    .line 103
    .restart local v14       #info_newcoupon_icom:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ub/main/data/Coupon;

    .line 104
    .local v11, data:Lcom/ub/main/data/Coupon;
    if-eqz v11, :cond_1

    .line 105
    const-string v10, "0"

    .line 106
    .local v10, count:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/coupon/CouponAdapter;->status:Ljava/lang/String;

    const-string v2, "voucher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :cond_0
    :goto_1
    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getUse_nums_limit()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getUse_nums()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getBrief()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getExpire_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, strTime:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6709\u6548\u65f6\u95f4\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getChannel_id()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/coupon/CouponAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v9

    .line 141
    .local v9, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v9, :cond_5

    .line 142
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 143
    invoke-virtual {v9, v4}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 154
    .end local v9           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v10           #count:Ljava/lang/String;
    .end local v16           #strTime:Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v13

    .line 92
    .end local v11           #data:Lcom/ub/main/data/Coupon;
    :cond_2
    move-object/from16 v13, p2

    goto/16 :goto_0

    .line 111
    .restart local v10       #count:Ljava/lang/String;
    .restart local v11       #data:Lcom/ub/main/data/Coupon;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/coupon/CouponAdapter;->status:Ljava/lang/String;

    const-string v2, "free"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    move/from16 v15, p1

    .local v15, pos:I
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    new-instance v1, Lcom/ub/main/coupon/CouponAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v15}, Lcom/ub/main/coupon/CouponAdapter$1;-><init>(Lcom/ub/main/coupon/CouponAdapter;I)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->isNewCoupon()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 126
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 145
    .end local v15           #pos:I
    .restart local v9       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v16       #strTime:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/coupon/CouponAdapter;->context:Landroid/app/Activity;

    const v2, 0x7f0200d1

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 146
    .local v12, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 149
    .local v17, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    mul-int/lit8 v2, p1, 0x3

    invoke-virtual {v11}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0200d1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ub/main/coupon/CouponAdapter;->context:Landroid/app/Activity;

    sget-object v7, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-direct/range {v1 .. v7}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v1, v0, v2}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

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
    .line 39
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    iput-object p1, p0, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponAdapter;->notifyDataSetChanged()V

    .line 41
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
    .line 50
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    iput-object p1, p0, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ub/main/coupon/CouponAdapter;->status:Ljava/lang/String;

    .line 159
    return-void
.end method
