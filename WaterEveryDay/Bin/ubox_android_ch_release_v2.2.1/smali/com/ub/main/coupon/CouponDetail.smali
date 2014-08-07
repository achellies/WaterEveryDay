.class public Lcom/ub/main/coupon/CouponDetail;
.super Lcom/ub/main/BaseActivity;
.source "CouponDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ub/main/net/ImageLoadingObserver;


# instance fields
.field private back:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private imageLoading:Lcom/ub/main/net/ImageLoading;

.field private imageView:Landroid/widget/ImageView;

.field private intent:Landroid/content/Intent;

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

.field private title:Landroid/widget/TextView;

.field private use:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->tasklist:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/ub/main/coupon/CouponDetail$1;

    invoke-direct {v0, p0}, Lcom/ub/main/coupon/CouponDetail$1;-><init>(Lcom/ub/main/coupon/CouponDetail;)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->handler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->use:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->head:Landroid/view/ViewGroup;

    .line 97
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->back:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->use:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->use:Landroid/widget/Button;

    const-string v1, "\u4f7f\u7528\u6b64\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->use:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->title:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->title:Landroid/widget/TextView;

    const-string v1, "\u4f18\u60e0\u5238\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    .line 108
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageView:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 110
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v3, "coupon_num"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v3, "channel"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".\u6709\u6548\u671f\u81f3\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v3, "expire"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v2, "breif"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 69
    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    const-string v3, "bigUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/ub/main/coupon/CouponDetail;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f0200d1

    .line 72
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 68
    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 73
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->tasklist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/ub/main/net/ImageLoading;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponDetail;->tasklist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/coupon/CouponDetail;->handler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3, v1}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 76
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->start()V

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
    .line 132
    return-void
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800ed

    if-ne v1, v2, :cond_1

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ub/main/coupon/CouponDetail;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponDetail;->finish()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800ee

    if-ne v1, v2, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 154
    .local v0, data:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/ub/main/coupon/CouponDetail;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponDetail;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponDetail;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponDetail;->loadData()V

    .line 57
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponDetail;->initControl()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->cancelLoading()V

    .line 171
    :cond_0
    iput-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 172
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->tasklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/ub/main/coupon/CouponDetail;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    :cond_1
    iput-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->tasklist:Ljava/util/ArrayList;

    .line 176
    iput-object v1, p0, Lcom/ub/main/coupon/CouponDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 177
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 179
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
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponDetail;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponDetail;->finish()V

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
