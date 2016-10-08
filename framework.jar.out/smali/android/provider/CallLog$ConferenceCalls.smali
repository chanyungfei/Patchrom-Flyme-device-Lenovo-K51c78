.class public final Landroid/provider/CallLog$ConferenceCalls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConferenceCalls"
.end annotation


# static fields
.field public static final CONFERENCE_DATE:Ljava/lang/String; = "conference_date"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 749
    const-string v0, "content://call_log/conference_calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$ConferenceCalls;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    return-void
.end method
