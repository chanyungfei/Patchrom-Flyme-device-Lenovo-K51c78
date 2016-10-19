.class abstract Landroid/widget/TranslationJSONHelper$Extractor;
.super Ljava/lang/Object;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Extractor"
.end annotation


# instance fields
.field protected mResultString:Ljava/lang/String;

.field protected mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

.field final synthetic this$0:Landroid/widget/TranslationJSONHelper;


# direct methods
.method private constructor <init>(Landroid/widget/TranslationJSONHelper;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Landroid/widget/TranslationJSONHelper$Extractor;->this$0:Landroid/widget/TranslationJSONHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TranslationJSONHelper;Landroid/widget/TranslationJSONHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TranslationJSONHelper;
    .param p2, "x1"    # Landroid/widget/TranslationJSONHelper$1;

    .prologue
    .line 852
    invoke-direct {p0, p1}, Landroid/widget/TranslationJSONHelper$Extractor;-><init>(Landroid/widget/TranslationJSONHelper;)V

    return-void
.end method


# virtual methods
.method public abstract extract()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract getResult()Ljava/lang/String;
.end method

.method public getResultType()Landroid/widget/TranslationJSONHelper$ResultType;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Landroid/widget/TranslationJSONHelper$Extractor;->mResultType:Landroid/widget/TranslationJSONHelper$ResultType;

    return-object v0
.end method
