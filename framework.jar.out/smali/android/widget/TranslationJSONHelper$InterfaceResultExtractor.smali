.class final Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;
.super Landroid/widget/TranslationJSONHelper$Extractor;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterfaceResultExtractor"
.end annotation


# instance fields
.field private mInterfaceDescription:Ljava/lang/String;

.field private mResult:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TranslationJSONHelper;


# direct methods
.method public constructor <init>(Landroid/widget/TranslationJSONHelper;)V
    .locals 1

    .prologue
    .line 447
    iput-object p1, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TranslationJSONHelper$Extractor;-><init>(Landroid/widget/TranslationJSONHelper;Landroid/widget/TranslationJSONHelper$1;)V

    .line 448
    sget-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

    .line 449
    return-void
.end method


# virtual methods
.method public extract()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$100(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$100(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "translate_result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->mResult:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$100(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "translate_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->mInterfaceDescription:Ljava/lang/String;

    .line 457
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;->mInterfaceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
