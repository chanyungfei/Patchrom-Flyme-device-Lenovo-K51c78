.class final Landroid/widget/TranslationJSONHelper$ExchangeExtractor;
.super Landroid/widget/TranslationJSONHelper$Extractor;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExchangeExtractor"
.end annotation


# instance fields
.field private mAdj:Ljava/lang/String;

.field private mAdv:Ljava/lang/String;

.field private mConn:Ljava/lang/String;

.field private mDone:Ljava/lang/String;

.field private mEr:Ljava/lang/String;

.field private mEst:Ljava/lang/String;

.field private mIng:Ljava/lang/String;

.field private mNoun:Ljava/lang/String;

.field private mPast:Ljava/lang/String;

.field private mPl:Ljava/lang/String;

.field private mPrep:Ljava/lang/String;

.field private mThird:Ljava/lang/String;

.field private mVerb:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TranslationJSONHelper;


# direct methods
.method public constructor <init>(Landroid/widget/TranslationJSONHelper;)V
    .locals 1

    .prologue
    .line 496
    iput-object p1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TranslationJSONHelper$Extractor;-><init>(Landroid/widget/TranslationJSONHelper;Landroid/widget/TranslationJSONHelper$1;)V

    .line 497
    sget-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

    .line 498
    return-void
.end method

.method private addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "strToAdd"    # Ljava/lang/String;
    .param p3, "descriptionResId"    # I

    .prologue
    .line 554
    if-eqz p2, :cond_0

    .line 555
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$200(Landroid/widget/TranslationJSONHelper;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    :cond_0
    return-void
.end method

.method private getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "jsonKey"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v4, 0x0

    .line 569
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 572
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 573
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 583
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v4

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
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
    .line 502
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_pl"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mPl:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_past"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mPast:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_done"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mDone:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_ing"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mIng:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_third"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mThird:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_er"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mEr:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_est"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mEst:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_noun"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mNoun:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_adv"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mAdv:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_conn"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mConn:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_adj"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mAdj:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_prep"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mPrep:Ljava/lang/String;

    .line 516
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/widget/TranslationJSONHelper;->access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "word_verb"

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mVerb:Ljava/lang/String;

    .line 519
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x9090065

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mPl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 526
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mPast:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 527
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mDone:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 528
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mIng:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 529
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mThird:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 530
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mEr:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 531
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mEst:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 532
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mNoun:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 533
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mAdv:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 534
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mConn:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 535
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mAdj:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 536
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mPrep:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 537
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->mVerb:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ExchangeExtractor;->addStringToResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
