.class Lcom/ub/main/ubsale/UbNumber$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "UbNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbNumber;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbNumber;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbNumber;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbNumber$1;->this$0:Lcom/ub/main/ubsale/UbNumber;

    .line 110
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 115
    const/16 v0, 0xa

    if-le p5, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber$1;->this$0:Lcom/ub/main/ubsale/UbNumber;

    const-string v1, "\u7f16\u53f7\u8d85\u8fc7\u4e86\u8303\u56f4!"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
