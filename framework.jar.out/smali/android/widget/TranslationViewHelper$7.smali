.class synthetic Landroid/widget/TranslationViewHelper$7;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$widget$TranslationViewHelper$PopupWindowState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Landroid/widget/TranslationViewHelper$PopupWindowState;->values()[Landroid/widget/TranslationViewHelper$PopupWindowState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/TranslationViewHelper$7;->$SwitchMap$android$widget$TranslationViewHelper$PopupWindowState:[I

    :try_start_0
    sget-object v0, Landroid/widget/TranslationViewHelper$7;->$SwitchMap$android$widget$TranslationViewHelper$PopupWindowState:[I

    sget-object v1, Landroid/widget/TranslationViewHelper$PopupWindowState;->Pending:Landroid/widget/TranslationViewHelper$PopupWindowState;

    invoke-virtual {v1}, Landroid/widget/TranslationViewHelper$PopupWindowState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Landroid/widget/TranslationViewHelper$7;->$SwitchMap$android$widget$TranslationViewHelper$PopupWindowState:[I

    sget-object v1, Landroid/widget/TranslationViewHelper$PopupWindowState;->Error:Landroid/widget/TranslationViewHelper$PopupWindowState;

    invoke-virtual {v1}, Landroid/widget/TranslationViewHelper$PopupWindowState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Landroid/widget/TranslationViewHelper$7;->$SwitchMap$android$widget$TranslationViewHelper$PopupWindowState:[I

    sget-object v1, Landroid/widget/TranslationViewHelper$PopupWindowState;->Result:Landroid/widget/TranslationViewHelper$PopupWindowState;

    invoke-virtual {v1}, Landroid/widget/TranslationViewHelper$PopupWindowState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
