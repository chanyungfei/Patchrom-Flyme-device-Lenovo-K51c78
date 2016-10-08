.class public final Landroid/provider/ContactsContract$CommonDataKinds$ImsCall;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsCall"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/ims"

.field public static final URL:Ljava/lang/String; = "data1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
