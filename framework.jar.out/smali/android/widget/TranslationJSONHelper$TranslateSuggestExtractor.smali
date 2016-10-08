.class final Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;
.super Landroid/widget/TranslationJSONHelper$Extractor;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TranslateSuggestExtractor"
.end annotation


# instance fields
.field private mSuggest:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TranslationJSONHelper;


# direct methods
.method public constructor <init>(Landroid/widget/TranslationJSONHelper;)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TranslationJSONHelper$Extractor;-><init>(Landroid/widget/TranslationJSONHelper;Landroid/widget/TranslationJSONHelper$1;)V

    .line 389
    sget-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

    .line 390
    return-void
.end method


# virtual methods
.method public extract()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v5, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;
    invoke-static {v5}, Landroid/widget/TranslationJSONHelper;->access$100(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mRes:Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/widget/TranslationJSONHelper;->access$200(Landroid/widget/TranslationJSONHelper;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9090058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v5, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;
    invoke-static {v5}, Landroid/widget/TranslationJSONHelper;->access$100(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "suggest"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 399
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 401
    .local v1, "count":I
    if-nez v1, :cond_2

    .line 402
    iget-object v5, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mRes:Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/widget/TranslationJSONHelper;->access$200(Landroid/widget/TranslationJSONHelper;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9090059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->mSuggest:Ljava/lang/String;

    .line 417
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 404
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "count":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 405
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 406
    .local v4, "singleSuggestionJSONObj":Lorg/json/JSONObject;
    const-string v5, "key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v5, v1, -0x1

    if-eq v2, v5, :cond_3

    .line 410
    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;->mSuggest:Ljava/lang/String;

    return-object v0
.end method
