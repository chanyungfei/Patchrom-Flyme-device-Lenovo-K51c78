.class public interface abstract Lcom/mediatek/recovery/IRecoveryManager;
.super Ljava/lang/Object;
.source "IRecoveryManager.java"


# static fields
.field public static final BACKUP_FAILED_CHECKSUM_MISMATCH:I = -0x3

.field public static final BACKUP_FAILED_FILE_UNDEFINED:I = -0x4

.field public static final BACKUP_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final BACKUP_FAILED_INVALID_IO:I = -0x2

.field public static final BACKUP_SUCCESS:I = 0x0

.field public static final RECOVER_FAILED_CANNOT_DELETE_ORIGINAL_FILE:I = -0x3

.field public static final RECOVER_FAILED_CHECKSUM_MISMATCH:I = -0x5

.field public static final RECOVER_FAILED_CLASS_INSTANTIATION_FAILED:I = -0x7

.field public static final RECOVER_FAILED_CLASS_NOT_FOUND:I = -0x6

.field public static final RECOVER_FAILED_EXCEPTION_COPY_BACK:I = -0x4

.field public static final RECOVER_FAILED_FILE_UNDEFINED:I = -0xb

.field public static final RECOVER_FAILED_INSUFFICIENT_STORAGE:I = -0x2

.field public static final RECOVER_FAILED_MODULE_UNDEFINED:I = -0xa

.field public static final RECOVER_FAILED_NO_BACKUP_FILE:I = -0x1

.field public static final RECOVER_FAILED_OPEARTION_EXCEPTION:I = -0x8

.field public static final RECOVER_FAILED_OPEARTION_FAILED:I = -0x9

.field public static final RECOVER_SUCCESS:I


# virtual methods
.method public abstract backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract startBootMonitor()V
.end method

.method public abstract stopBootMonitor()V
.end method

.method public abstract systemReady()V
.end method
