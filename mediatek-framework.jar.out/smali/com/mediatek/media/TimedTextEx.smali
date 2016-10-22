.class public Lcom/mediatek/media/TimedTextEx;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.TimedText"

.field private static final FD_FIELD_NAME:Ljava/lang/String; = "mBitMapFd"

.field private static final HEIGHT_FIELD_NAME:Ljava/lang/String; = "mBitMapHeight"

.field private static final TAG:Ljava/lang/String; = "TimedTextEx"

.field private static final TEXT_FIELD_NAME:Ljava/lang/String; = "mTextByteChars"

.field private static final WIDTH_FIELD_NAME:Ljava/lang/String; = "mBitMapWidth"

.field private static fdField:Ljava/lang/reflect/Field;

.field private static heightField:Ljava/lang/reflect/Field;

.field private static textField:Ljava/lang/reflect/Field;

.field private static widthField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    const-string v2, "android.media.TimedText"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "cls":Ljava/lang/Class;
    const-string v2, "mTextByteChars"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/TimedTextEx;->textField:Ljava/lang/reflect/Field;

    .line 53
    const-string v2, "mBitMapWidth"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/TimedTextEx;->widthField:Ljava/lang/reflect/Field;

    .line 54
    const-string v2, "mBitMapHeight"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/TimedTextEx;->heightField:Ljava/lang/reflect/Field;

    .line 55
    const-string v2, "mBitMapFd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/TimedTextEx;->fdField:Ljava/lang/reflect/Field;

    .line 57
    sget-object v2, Lcom/mediatek/media/TimedTextEx;->textField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    sget-object v2, Lcom/mediatek/media/TimedTextEx;->widthField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    sget-object v2, Lcom/mediatek/media/TimedTextEx;->heightField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    sget-object v2, Lcom/mediatek/media/TimedTextEx;->fdField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TimedTextEx"

    const-string v3, "NoSuchFieldException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "TimedTextEx"

    const-string v3, "ClassNotFoundException: android.media.TimedText"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFd(Landroid/media/TimedText;)I
    .locals 1
    .param p0, "timedText"    # Landroid/media/TimedText;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/mediatek/media/TimedTextEx;->fdField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getBitmapHeight(Landroid/media/TimedText;)I
    .locals 1
    .param p0, "timedText"    # Landroid/media/TimedText;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/mediatek/media/TimedTextEx;->heightField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getBitmapWidth(Landroid/media/TimedText;)I
    .locals 1
    .param p0, "timedText"    # Landroid/media/TimedText;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/mediatek/media/TimedTextEx;->widthField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getTextByteChars(Landroid/media/TimedText;)[B
    .locals 1
    .param p0, "timedText"    # Landroid/media/TimedText;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/media/TimedTextEx;->textField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method
