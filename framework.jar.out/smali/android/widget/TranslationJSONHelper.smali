.class public final Landroid/widget/TranslationJSONHelper;
.super Ljava/lang/Object;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationJSONHelper$1;,
        Landroid/widget/TranslationJSONHelper$JSONConstants;,
        Landroid/widget/TranslationJSONHelper$Extractor;,
        Landroid/widget/TranslationJSONHelper$PartsExtractor;,
        Landroid/widget/TranslationJSONHelper$PronunciationExtractor;,
        Landroid/widget/TranslationJSONHelper$ExchangeExtractor;,
        Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;,
        Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;,
        Landroid/widget/TranslationJSONHelper$ResultType;
    }
.end annotation


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final NEW_LINE:C = '\n'

.field private static final SPACE:C = ' '

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLATE_FAILED:I = 0x0

.field private static final TRANSLATE_SUCCESS:I = 0x1


# instance fields
.field private mBaseInfo:Lorg/json/JSONObject;

.field private mExchange:Lorg/json/JSONObject;

.field private mExtractors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TranslationJSONHelper$Extractor;",
            ">;"
        }
    .end annotation
.end field

.field private mFullJSON:Lorg/json/JSONObject;

.field private mMessage:Lorg/json/JSONObject;

.field private mOriginalWord:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mSymbols:Lorg/json/JSONArray;

.field private mTransType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Landroid/widget/TranslationJSONHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/TranslationJSONHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationJSONHelper;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TranslationJSONHelper;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationJSONHelper;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationJSONHelper;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TranslationJSONHelper;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationJSONHelper;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TranslationJSONHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationJSONHelper;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mOriginalWord:Ljava/lang/String;

    return-object v0
.end method

.method private addExtractorsSequentially()V
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Landroid/widget/TranslationJSONHelper;->mTransType:I

    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;

    invoke-direct {v1, p0}, Landroid/widget/TranslationJSONHelper$PronunciationExtractor;-><init>(Landroid/widget/TranslationJSONHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TranslationJSONHelper$PartsExtractor;

    invoke-direct {v1, p0}, Landroid/widget/TranslationJSONHelper$PartsExtractor;-><init>(Landroid/widget/TranslationJSONHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;

    invoke-direct {v1, p0}, Landroid/widget/TranslationJSONHelper$InterfaceResultExtractor;-><init>(Landroid/widget/TranslationJSONHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;

    invoke-direct {v1, p0}, Landroid/widget/TranslationJSONHelper$TranslateSuggestExtractor;-><init>(Landroid/widget/TranslationJSONHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearLastExtractors()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    :cond_0
    return-void
.end method

.method private extractFullJSON()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Landroid/widget/TranslationJSONHelper;->addExtractorsSequentially()V

    .line 345
    iget-object v2, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TranslationJSONHelper$Extractor;

    .line 346
    .local v0, "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    invoke-virtual {v0}, Landroid/widget/TranslationJSONHelper$Extractor;->extract()V

    goto :goto_0

    .line 348
    .end local v0    # "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    :cond_0
    return-void
.end method

.method private initExchange()V
    .locals 3

    .prologue
    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;

    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;

    const-string v2, "exchange"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TranslationJSONHelper;->mExchange:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initExtractors()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public extract(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "result":Z
    if-nez p2, :cond_0

    .line 211
    :goto_0
    return v3

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TranslationJSONHelper;->mRes:Landroid/content/res/Resources;

    .line 166
    :try_start_0
    invoke-direct {p0}, Landroid/widget/TranslationJSONHelper;->clearLastExtractors()V

    .line 168
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/widget/TranslationJSONHelper;->mFullJSON:Lorg/json/JSONObject;

    .line 172
    invoke-direct {p0}, Landroid/widget/TranslationJSONHelper;->initExtractors()V

    .line 175
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mFullJSON:Lorg/json/JSONObject;

    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, "translationStauts":I
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 177
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mFullJSON:Lorg/json/JSONObject;

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TranslationJSONHelper;->mMessage:Lorg/json/JSONObject;

    .line 178
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mMessage:Lorg/json/JSONObject;

    const-string/jumbo v5, "word_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TranslationJSONHelper;->mOriginalWord:Ljava/lang/String;

    .line 179
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mMessage:Lorg/json/JSONObject;

    const-string v5, "baseInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;

    .line 180
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;

    const-string/jumbo v5, "translate_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/widget/TranslationJSONHelper;->mTransType:I

    .line 182
    iget v4, p0, Landroid/widget/TranslationJSONHelper;->mTransType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper;->mBaseInfo:Lorg/json/JSONObject;

    const-string/jumbo v4, "symbols"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TranslationJSONHelper;->mSymbols:Lorg/json/JSONArray;

    .line 198
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/TranslationJSONHelper;->extractFullJSON()V

    .line 199
    const/4 v1, 0x1

    .end local v2    # "translationStauts":I
    :goto_1
    move v3, v1

    .line 211
    goto :goto_0

    .line 201
    .restart local v2    # "translationStauts":I
    :cond_1
    const/4 v1, 0x0

    .line 202
    sget-object v3, Landroid/widget/TranslationJSONHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extract : KEY_STATUS = translate failed. JSON string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 205
    .end local v2    # "translationStauts":I
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public extractAndGetMixedResult(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Landroid/widget/TranslationJSONHelper;->extract(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, "isExtractSuccess":Z
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/widget/TranslationJSONHelper;->getMixedResult()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    return-object v1
.end method

.method public getMixedResult()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 264
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TranslationJSONHelper$Extractor;

    .line 269
    .local v0, "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    invoke-virtual {v0}, Landroid/widget/TranslationJSONHelper$Extractor;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    .end local v0    # "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v2
.end method

.method public getNonPronunciationResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 322
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TranslationJSONHelper$Extractor;

    .line 326
    .local v0, "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    sget-object v4, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    invoke-virtual {v0}, Landroid/widget/TranslationJSONHelper$Extractor;->getResultType()Landroid/widget/TranslationJSONHelper$ResultType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/widget/TranslationJSONHelper$Extractor;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    .end local v0    # "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v2
.end method

.method public getPronunciationResult()Ljava/lang/String;
    .locals 5

    .prologue
    .line 289
    const/4 v2, 0x0

    .line 291
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Landroid/widget/TranslationJSONHelper;->mExtractors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TranslationJSONHelper$Extractor;

    .line 294
    .local v0, "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    sget-object v3, Landroid/widget/TranslationJSONHelper$ResultType;->Pronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    invoke-virtual {v0}, Landroid/widget/TranslationJSONHelper$Extractor;->getResultType()Landroid/widget/TranslationJSONHelper$ResultType;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/widget/TranslationJSONHelper$Extractor;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 302
    .end local v0    # "extractor":Landroid/widget/TranslationJSONHelper$Extractor;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method
