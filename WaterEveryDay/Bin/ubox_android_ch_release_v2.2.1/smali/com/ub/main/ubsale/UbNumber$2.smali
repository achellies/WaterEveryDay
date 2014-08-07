.class Lcom/ub/main/ubsale/UbNumber$2;
.super Ljava/lang/Object;
.source "UbNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbNumber;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbNumber;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbNumber$2;->this$0:Lcom/ub/main/ubsale/UbNumber;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber$2;->this$0:Lcom/ub/main/ubsale/UbNumber;

    #getter for: Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbNumber;->access$0(Lcom/ub/main/ubsale/UbNumber;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method
