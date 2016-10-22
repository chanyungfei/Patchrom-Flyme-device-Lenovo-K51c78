.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStoreType"
.end annotation


# instance fields
.field mMediaType:[I

.field mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "mediaType"    # [I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;->mType:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;->mMediaType:[I

    .line 139
    return-void
.end method
