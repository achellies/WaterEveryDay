.class public Lcom/ub/main/foodsale/FoodYudingSuccess;
.super Lcom/ub/main/BaseActivity;
.source "FoodYudingSuccess.java"


# instance fields
.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    return-void
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
    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/FoodYudingSuccess;->setContentView(I)V

    .line 43
    const v3, 0x7f0800a9

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/FoodYudingSuccess;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodYudingSuccess;->timeTextView:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodYudingSuccess;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 47
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodYudingSuccess;->timeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8bf7\u5728"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "time"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e4b\u524d\u53d6\u9910\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    const v3, 0x7f0800e7

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/FoodYudingSuccess;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, title1:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    const-string v3, "\u9884\u8ba2\u6210\u529f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v3, 0x7f0800ed

    invoke-virtual {p0, v3}, Lcom/ub/main/foodsale/FoodYudingSuccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, backBtn:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    new-instance v3, Lcom/ub/main/foodsale/FoodYudingSuccess$1;

    invoke-direct {v3, p0}, Lcom/ub/main/foodsale/FoodYudingSuccess$1;-><init>(Lcom/ub/main/foodsale/FoodYudingSuccess;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
