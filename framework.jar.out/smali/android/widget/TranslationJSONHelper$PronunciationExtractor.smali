.class final Landroid/widget/TranslationJSONHelper$PronunciationExtractor;
.super Landroid/widget/TranslationJSONHelper$Extractor;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PronunciationExtractor"
.end annotation


# instance fields
.field private mPronunciation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/TranslationJSONHelper;


# direct methods
.method public constructor <init>(Landroid/widget/TranslationJSONHelper;)V
    .locals 2

    .prologue
    .line 606
    iput-object p1, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TranslationJSONHelper$Extractor;-><init>(Landroid/widget/TranslationJSONHelper;Landroid/widget/TranslationJSONHelper$1;)V

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->mPronunciation:Ljava/util/ArrayList;

    .line 607
    sget-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->Pronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

    .line 608
    return-void
.end method

.method private getOnePronunciation(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "symbols"    # Lorg/json/JSONObject;
    .param p3, "jsonKey"    # Ljava/lang/String;
    .param p4, "descriptionResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "pronunciationStr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/widget/TranslationJSONHelper;->access$200(Landroid/widget/TranslationJSONHelper;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_0
    return-void
.end method

.method private getOnePronunciation(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "symbols"    # Lorg/json/JSONObject;
    .param p3, "jsonKey"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "pronunciationStr":Ljava/lang/String;
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    :goto_0
    return-void

    .line 731
    :cond_0
    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPronunciation(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "symbols"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ph_en"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const-string/jumbo v1, "ph_en"

    const v2, 0x9090054

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->getOnePronunciation(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 659
    :cond_0
    const-string/jumbo v1, "ph_am"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    const-string/jumbo v1, "ph_am"

    const v2, 0x9090055

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->getOnePronunciation(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 662
    :cond_1
    const-string/jumbo v1, "ph_other"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 663
    const-string/jumbo v1, "ph_other"

    const v2, 0x9090056

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->getOnePronunciation(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 666
    :cond_2
    const-string/jumbo v1, "word_symbol"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    const-string/jumbo v1, "word_symbol"

    iget-object v2, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mOriginalWord:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/TranslationJSONHelper;->access$500(Landroid/widget/TranslationJSONHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->getOnePronunciation(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public extract()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 612
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;
    invoke-static {v3}, Landroid/widget/TranslationJSONHelper;->access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 613
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;
    invoke-static {v3}, Landroid/widget/TranslationJSONHelper;->access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 614
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;
    invoke-static {v3}, Landroid/widget/TranslationJSONHelper;->access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->getPronunciation(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "onePronunciationStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 616
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->mPronunciation:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "onePronunciationStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 5

    .prologue
    .line 624
    const/4 v2, 0x0

    .line 626
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->mPronunciation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 627
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 631
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;->mPronunciation:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v2
.end method
