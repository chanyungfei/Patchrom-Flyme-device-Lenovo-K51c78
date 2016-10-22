.class public final Landroid/provider/ContactsContract$DialerSearch;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ViewDialerSearchColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialerSearch"
.end annotation


# static fields
.field public static final MATCHED_DATA_OFFSET:Ljava/lang/String; = "matched_data_offset"

.field public static final MATCHED_NAME_OFFSET:Ljava/lang/String; = "matched_name_offset"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9357
    return-void
.end method
