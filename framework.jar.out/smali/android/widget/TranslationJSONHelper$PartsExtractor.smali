.class final Landroid/widget/TranslationJSONHelper$PartsExtractor;
.super Landroid/widget/TranslationJSONHelper$Extractor;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PartsExtractor"
.end annotation


# instance fields
.field private mMeans:Ljava/util/ArrayList;
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
    .line 756
    iput-object p1, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TranslationJSONHelper$Extractor;-><init>(Landroid/widget/TranslationJSONHelper;Landroid/widget/TranslationJSONHelper$1;)V

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mMeans:Ljava/util/ArrayList;

    .line 757
    sget-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

    .line 758
    return-void
.end method

.method private addOneMeaning(Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 838
    const-string/jumbo v3, "part"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "means"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 839
    const-string/jumbo v3, "part"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    const-string/jumbo v3, "means"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 842
    .local v2, "meaningArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 843
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v3, "; "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "meaningArray":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method private getMeans(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "symbols"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "parts"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 814
    const-string/jumbo v4, "parts"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 815
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 816
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {p0, v3, v4}, Landroid/widget/TranslationJSONHelper$PartsExtractor;->addOneMeaning(Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private removeUselessCharater(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 784
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 785
    .local v0, "lastCharIndex":I
    if-ltz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_0

    .line 786
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 789
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 790
    if-ltz v0, :cond_1

    const/16 v1, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 791
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 794
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 795
    if-ltz v0, :cond_2

    const/16 v1, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 798
    :cond_2
    return-void
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
    .line 762
    iget-object v2, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;
    invoke-static {v2}, Landroid/widget/TranslationJSONHelper;->access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;
    invoke-static {v2}, Landroid/widget/TranslationJSONHelper;->access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 764
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mMeans:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->this$0:Landroid/widget/TranslationJSONHelper;

    # getter for: Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;
    invoke-static {v2}, Landroid/widget/TranslationJSONHelper;->access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Landroid/widget/TranslationJSONHelper$PartsExtractor;->getMeans(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 4

    .prologue
    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mMeans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 773
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 774
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mMeans:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    :cond_0
    invoke-direct {p0, v2}, Landroid/widget/TranslationJSONHelper$PartsExtractor;->removeUselessCharater(Ljava/lang/StringBuilder;)V

    .line 778
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mResultString:Ljava/lang/String;

    .line 780
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper$PartsExtractor;->mResultString:Ljava/lang/String;

    return-object v3
.end method
