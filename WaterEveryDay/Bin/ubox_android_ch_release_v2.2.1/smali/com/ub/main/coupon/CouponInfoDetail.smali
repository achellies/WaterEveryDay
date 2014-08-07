.class public Lcom/ub/main/coupon/CouponInfoDetail;
.super Lcom/ub/main/BaseActivity;
.source "CouponInfoDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ub/main/net/ImageLoadingObserver;


# instance fields
.field private back:Landroid/widget/Button;

.field private dis:Landroid/widget/TextView;

.field private discount:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private imageLoading:Lcom/ub/main/net/ImageLoading;

.field private imageView:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private source:Landroid/widget/TextView;

.field private sourceSystem:Landroid/widget/TextView;

.field private status:Ljava/lang/String;

.field private task:Lcom/ub/main/net/ImageLoadingTaskInfo;

.field private tasklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private time:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageView:Landroid/widget/ImageView;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->tasklist:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lcom/ub/main/coupon/CouponInfoDetail$1;

    invoke-direct {v0, p0}, Lcom/ub/main/coupon/CouponInfoDetail$1;-><init>(Lcom/ub/main/coupon/CouponInfoDetail;)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v4, 0x7f0200d1

    const/4 v1, 0x0

    .line 73
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->head:Landroid/view/ViewGroup;

    .line 74
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800ed

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->back:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->title:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->title:Landroid/widget/TextView;

    const-string v2, "\u4f18\u60e0\u5238\u8be6\u60c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageView:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->name:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->discount:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->time:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->source:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->sourceSystem:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->dis:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponInfoDetail;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 91
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->name:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->discount:Landroid/widget/TextView;

    const-string v2, "discount"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".\u6709\u6548\u671f\u81f3\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "date"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->source:Landroid/widget/TextView;

    const-string v2, "channel"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->sourceSystem:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ub/main/coupon/CouponInfoDetail;->source:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->dis:Landroid/widget/TextView;

    const-string v2, "breif"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const-string v0, "status"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->status:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 106
    const-string v2, "bigUrl"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/ub/main/coupon/CouponInfoDetail;->status:Ljava/lang/String;

    const-string v6, "available"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    :goto_0
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 105
    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 110
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->tasklist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponInfoDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/ub/main/net/ImageLoading;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponInfoDetail;->tasklist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/coupon/CouponInfoDetail;->handler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3, v1}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 113
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 115
    :cond_0
    return-void

    .line 107
    :cond_1
    const v4, 0x7f0200d2

    goto :goto_0
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800ed

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponInfoDetail;->finish()V

    .line 157
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->requestWindowFeature(I)Z

    .line 62
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponInfoDetail;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponInfoDetail;->initView()V

    .line 65
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponInfoDetail;->initControl()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->cancelLoading()V

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/ub/main/coupon/CouponInfoDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 167
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->tasklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/ub/main/coupon/CouponInfoDetail;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_1
    iput-object v1, p0, Lcom/ub/main/coupon/CouponInfoDetail;->tasklist:Ljava/util/ArrayList;

    .line 171
    iput-object v1, p0, Lcom/ub/main/coupon/CouponInfoDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 172
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 137
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponInfoDetail;->finish()V

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
