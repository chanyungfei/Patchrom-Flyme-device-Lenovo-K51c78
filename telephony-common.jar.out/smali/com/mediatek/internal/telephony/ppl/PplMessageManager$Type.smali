.class public Lcom/mediatek/internal/telephony/ppl/PplMessageManager$Type;
.super Ljava/lang/Object;
.source "PplMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ppl/PplMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final INSTRUCTION_DESCRIPTION:B = 0xat

.field public static final INSTRUCTION_DESCRIPTION2:B = 0xbt

.field public static final INVALID:B = -0x1t

.field public static final LOCK_REQUEST:B = 0x1t

.field public static final LOCK_RESPONSE:B = 0x2t

.field public static final RESET_PW_REQUEST:B = 0x5t

.field public static final RESET_PW_RESPONSE:B = 0x6t

.field public static final SIM_CHANGED:B = 0x0t

.field public static final UNLOCK_REQUEST:B = 0x3t

.field public static final UNLOCK_RESPONSE:B = 0x4t

.field public static final WIPE_COMPLETED:B = 0x9t

.field public static final WIPE_REQUEST:B = 0x7t

.field public static final WIPE_STARTED:B = 0x8t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
