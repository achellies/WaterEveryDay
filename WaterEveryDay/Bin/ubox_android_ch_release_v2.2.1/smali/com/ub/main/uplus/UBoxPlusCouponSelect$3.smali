.class Lcom/ub/main/uplus/UBoxPlusCouponSelect$3;
.super Ljava/lang/Object;
.source "UBoxPlusCouponSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/uplus/UBoxPlusCouponSelect;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;


# direct methods
.method constructor <init>(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$3;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$3;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->setResult(I)V

    .line 187
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$3;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    invoke-virtual {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->finish()V

    .line 188
    return-void
.end method
