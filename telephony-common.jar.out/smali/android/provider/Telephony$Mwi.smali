.class public final Landroid/provider/Telephony$Mwi;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mwi"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FROM:Ljava/lang/String; = "from_account"

.field public static final GOT_CONTENT:Ljava/lang/String; = "got_content"

.field public static final MSG_ACCOUNT:Ljava/lang/String; = "msg_account"

.field public static final MSG_CONTEXT:Ljava/lang/String; = "msg_context"

.field public static final MSG_DATE:Ljava/lang/String; = "msg_date"

.field public static final MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TO:Ljava/lang/String; = "to_account"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3917
    const-string v0, "content://mwimsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mwi;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
