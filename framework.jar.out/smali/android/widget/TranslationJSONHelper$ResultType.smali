.class final enum Landroid/widget/TranslationJSONHelper$ResultType;
.super Ljava/lang/Enum;
.source "TranslationJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationJSONHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/TranslationJSONHelper$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TranslationJSONHelper$ResultType;

.field public static final enum NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

.field public static final enum Pronunciation:Landroid/widget/TranslationJSONHelper$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Landroid/widget/TranslationJSONHelper$ResultType;

    const-string v1, "Pronunciation"

    invoke-direct {v0, v1, v2}, Landroid/widget/TranslationJSONHelper$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->Pronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    new-instance v0, Landroid/widget/TranslationJSONHelper$ResultType;

    const-string v1, "NonPronunciation"

    invoke-direct {v0, v1, v3}, Landroid/widget/TranslationJSONHelper$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TranslationJSONHelper$ResultType;

    sget-object v1, Landroid/widget/TranslationJSONHelper$ResultType;->Pronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/TranslationJSONHelper$ResultType;->NonPronunciation:Landroid/widget/TranslationJSONHelper$ResultType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->$VALUES:[Landroid/widget/TranslationJSONHelper$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TranslationJSONHelper$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Landroid/widget/TranslationJSONHelper$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TranslationJSONHelper$ResultType;

    return-object v0
.end method

.method public static values()[Landroid/widget/TranslationJSONHelper$ResultType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/widget/TranslationJSONHelper$ResultType;->$VALUES:[Landroid/widget/TranslationJSONHelper$ResultType;

    invoke-virtual {v0}, [Landroid/widget/TranslationJSONHelper$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TranslationJSONHelper$ResultType;

    return-object v0
.end method
