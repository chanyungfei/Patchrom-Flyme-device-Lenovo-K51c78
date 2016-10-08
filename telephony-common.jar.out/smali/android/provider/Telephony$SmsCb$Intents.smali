.class public final Landroid/provider/Telephony$SmsCb$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsCbMessage;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1575
    const-string v3, "message"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 1576
    .local v1, "messages":[Landroid/os/Parcelable;
    if-nez v1, :cond_1

    .line 1577
    const/4 v2, 0x0

    .line 1585
    :cond_0
    return-object v2

    .line 1580
    :cond_1
    array-length v3, v1

    new-array v2, v3, [Landroid/telephony/SmsCbMessage;

    .line 1582
    .local v2, "msgs":[Landroid/telephony/SmsCbMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1583
    aget-object v3, v1, v0

    check-cast v3, Landroid/telephony/SmsCbMessage;

    aput-object v3, v2, v0

    .line 1582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
