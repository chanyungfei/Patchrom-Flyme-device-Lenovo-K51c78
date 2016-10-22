.class public final Lcom/lenovo/lps/reaper/sdk/i/e;
.super Ljava/lang/Object;


# static fields
.field public static a:[I

.field public static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->b:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x6
    .end array-data
.end method
