.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mForBackup:Z

.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 124
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 131
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 99
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 104
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 109
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 119
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 1252
    iput-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    .line 142
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 145
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 147
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/mms/pdu/PduComposer;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 479
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 481
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 483
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 495
    .end local v0    # "addressType":I
    :goto_1
    return-object v3

    .line 484
    .restart local v0    # "addressType":I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 486
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 491
    .end local v0    # "addressType":I
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 487
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 489
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 24
    .param p1, "field"    # I

    .prologue
    .line 502
    packed-switch p1, :pswitch_data_0

    .line 670
    :pswitch_0
    const/16 v21, 0x3

    .line 673
    :goto_0
    return v21

    .line 504
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 507
    .local v20, "version":I
    if-nez v20, :cond_1

    .line 508
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 673
    .end local v20    # "version":I
    :cond_0
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    .line 510
    .restart local v20    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 517
    .end local v20    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 518
    .local v19, "textString":[B
    if-nez v19, :cond_2

    .line 519
    const/16 v21, 0x2

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 529
    .end local v19    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 531
    .local v4, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_3

    .line 532
    const/16 v21, 0x2

    goto :goto_0

    .line 536
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 537
    aget-object v21, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 538
    .local v18, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_4

    .line 539
    const/16 v21, 0x1

    goto :goto_0

    .line 542
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 536
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 549
    .end local v4    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    .line 552
    .local v13, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    new-instance v21, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const-string v22, "insert-address-token"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 557
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 559
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 561
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v14

    .line 565
    .local v14, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 567
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 568
    .restart local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_7

    .line 569
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 572
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 574
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 575
    .local v12, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 576
    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 587
    .end local v12    # "flen":I
    .end local v13    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 588
    .local v17, "octet":I
    if-nez v17, :cond_8

    .line 589
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 592
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 593
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 597
    .end local v17    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 598
    .local v6, "date":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v6

    if-nez v21, :cond_9

    .line 599
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 602
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 603
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 607
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 609
    .local v5, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_a

    .line 610
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 613
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 614
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 618
    .end local v5    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 619
    .local v16, "messageClass":[B
    if-nez v16, :cond_b

    .line 620
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 623
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 624
    const-string v21, "advertisement"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 626
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 627
    :cond_c
    const-string v21, "auto"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 629
    const/16 v21, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 630
    :cond_d
    const-string v21, "personal"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 632
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 633
    :cond_e
    const-string v21, "informational"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 635
    const/16 v21, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 637
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 642
    .end local v16    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 643
    .local v8, "expiry":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v8

    if-nez v21, :cond_10

    .line 644
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 647
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 653
    .local v11, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 654
    const-string v21, "PduComposer"

    const-string v22, "absolute token"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 661
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 663
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v10

    .line 664
    .local v10, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 665
    int-to-long v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 657
    .end local v10    # "expiryLength":I
    :cond_11
    const-string v21, "PduComposer"

    const-string v22, "relative token"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto :goto_3

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 1219
    if-nez p0, :cond_0

    .line 1238
    :goto_0
    return v0

    .line 1223
    :cond_0
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    const/4 v0, 0x3

    goto :goto_0

    .line 1226
    :cond_1
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1228
    const/4 v0, 0x1

    goto :goto_0

    .line 1229
    :cond_2
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1231
    const/4 v0, 0x2

    goto :goto_0

    .line 1232
    :cond_3
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1234
    const/4 v0, 0x4

    goto :goto_0

    .line 1237
    :cond_4
    const-string v1, "PduComposer"

    const-string v2, "checkAddressType PDU_UNKNOWN_ADDRESS_TYPE"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 763
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 764
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 765
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 769
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 770
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 773
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    :cond_1
    :goto_0
    return v0

    .line 778
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 783
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 785
    goto :goto_0
.end method

.method private makeMessageBody(I)I
    .locals 32
    .param p1, "pduType"    # I

    .prologue
    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 885
    .local v16, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 886
    .local v10, "contentType":Ljava/lang/String;
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 887
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_1

    .line 889
    const/16 v29, 0x1

    .line 1077
    :cond_0
    :goto_0
    return v29

    .line 892
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 895
    const/4 v5, 0x0

    .line 896
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 903
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_5

    .line 904
    :cond_3
    const-string v29, "PduComposer"

    const-string v30, "makeMessageBody body == null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 909
    const/16 v29, 0x0

    goto :goto_0

    .line 898
    :cond_4
    const/16 v29, 0x2

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_1

    .line 914
    :cond_5
    const/16 v29, 0x0

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 916
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 917
    .local v28, "start":[B
    if-eqz v28, :cond_6

    .line 918
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 919
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 927
    :cond_6
    :goto_2
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 928
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v28    # "start":[B
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 935
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 936
    int-to-long v0, v15

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 940
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 941
    .local v27, "partNum":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 942
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_19

    .line 943
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 944
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 947
    .local v4, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 950
    .local v11, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 952
    .local v24, "partContentType":[B
    if-nez v24, :cond_8

    .line 954
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 922
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v20    # "i":I
    .end local v24    # "partContentType":[B
    .end local v27    # "partNum":I
    .restart local v28    # "start":[B
    :cond_7
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 930
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v28    # "start":[B
    :catch_0
    move-exception v18

    .line 931
    .local v18, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_3

    .line 958
    .end local v18    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v20    # "i":I
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v27    # "partNum":I
    :cond_8
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 960
    .local v25, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v25, :cond_12

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 970
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 973
    .local v22, "name":[B
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_c

    .line 974
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 976
    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_c

    .line 977
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 978
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_c

    .line 979
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v22

    .line 980
    if-eqz v22, :cond_13

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_13

    .line 981
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "makeMessageBody name 1= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_c
    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 993
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "makeMessageBody name 2= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_d
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 996
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 999
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1000
    .local v7, "charset":I
    if-eqz v7, :cond_e

    .line 1001
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1002
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1005
    :cond_e
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1006
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1007
    int-to-long v0, v13

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1011
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1014
    .local v8, "contentId":[B
    if-eqz v8, :cond_f

    array-length v0, v8

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 1015
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1016
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    const/16 v29, 0x3e

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 1017
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1024
    :cond_f
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1026
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_10

    array-length v0, v9

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 1027
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1028
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1032
    :cond_10
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1034
    .local v19, "headerLength":I
    const/16 v17, 0x0

    .line 1035
    .local v17, "dataLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 1037
    .local v26, "partData":[B
    if-eqz v26, :cond_15

    .line 1038
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1039
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1067
    :cond_11
    :goto_7
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_18

    .line 1068
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 963
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v26    # "partData":[B
    :cond_12
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_5

    .line 986
    .restart local v22    # "name":[B
    :cond_13
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1019
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v13    # "contentTypeLength":I
    :cond_14
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1041
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v26    # "partData":[B
    :cond_15
    const/4 v14, 0x0

    .line 1043
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v6, v0, [B

    .line 1044
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1045
    const/16 v21, 0x0

    .line 1046
    .local v21, "len":I
    :goto_8
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1049
    add-int v17, v17, v21

    goto :goto_8

    .line 1058
    :cond_16
    if-eqz v14, :cond_11

    .line 1060
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    .line 1061
    :catch_1
    move-exception v29

    goto/16 :goto_7

    .line 1051
    .end local v6    # "buffer":[B
    .end local v21    # "len":I
    :catch_2
    move-exception v18

    .line 1052
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    .line 1058
    if-eqz v14, :cond_0

    .line 1060
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1061
    :catch_3
    move-exception v30

    goto/16 :goto_0

    .line 1053
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v18

    .line 1054
    .local v18, "e":Ljava/io/IOException;
    const/16 v29, 0x1

    .line 1058
    if-eqz v14, :cond_0

    .line 1060
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1061
    :catch_5
    move-exception v30

    goto/16 :goto_0

    .line 1055
    .end local v18    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    .line 1056
    .local v18, "e":Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    .line 1058
    if-eqz v14, :cond_0

    .line 1060
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 1061
    :catch_7
    move-exception v30

    goto/16 :goto_0

    .line 1058
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v29

    if-eqz v14, :cond_17

    .line 1060
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1062
    :cond_17
    :goto_9
    throw v29

    .line 1071
    .end local v14    # "cr":Ljava/io/InputStream;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1072
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1073
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 942
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1077
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "partContentType":[B
    .end local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v26    # "partData":[B
    :cond_19
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1061
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v9    # "contentLocation":[B
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v13    # "contentTypeLength":I
    .restart local v14    # "cr":Ljava/io/InputStream;
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .restart local v26    # "partData":[B
    :catch_8
    move-exception v30

    goto :goto_9
.end method

.method private makeNotifyInd()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1264
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 1265
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1266
    iput v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1270
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1271
    const/16 v4, 0x82

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1274
    const/16 v4, 0x98

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 1326
    :goto_0
    return v4

    .line 1279
    :cond_1
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 1280
    goto :goto_0

    .line 1284
    :cond_2
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 1285
    goto :goto_0

    .line 1288
    :cond_3
    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1289
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    .line 1290
    .local v2, "size":J
    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 1292
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 1293
    goto :goto_0

    .line 1296
    :cond_4
    const/16 v4, 0x83

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1297
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 1298
    .local v0, "contentLocation":[B
    if-eqz v0, :cond_5

    .line 1299
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd contentLocation != null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1305
    :goto_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1306
    .local v1, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_6

    .line 1307
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd subject != null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1309
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1315
    :goto_2
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1318
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 1319
    goto :goto_0

    .line 1302
    .end local v1    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd contentLocation  = null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1311
    .restart local v1    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd subject  = null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1322
    :cond_7
    const/16 v4, 0x95

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    .line 1323
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 1326
    goto/16 :goto_0
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 728
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 729
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 730
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 734
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 735
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 738
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 756
    :cond_1
    :goto_0
    return v0

    .line 743
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 748
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 754
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 756
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 680
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 681
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 682
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 686
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 687
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 690
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    :cond_1
    :goto_0
    return v0

    .line 695
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 700
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 705
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 710
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 713
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 721
    goto :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 8

    .prologue
    const/16 v7, 0x98

    const/16 v6, 0x84

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1332
    const-string v4, "PduComposer"

    const-string v5, "makeRetrievePdu begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 1334
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1335
    iput v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1339
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1340
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1342
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1343
    .local v1, "trid":[B
    if-nez v1, :cond_2

    .line 1345
    const-string v4, "PduComposer"

    const-string v5, "Transaction ID is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :goto_0
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1421
    :cond_1
    :goto_1
    return v2

    .line 1348
    :cond_2
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1349
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    .line 1358
    :cond_3
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1361
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1365
    const/4 v0, 0x0

    .line 1368
    .local v0, "recipient":Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 1369
    const/4 v0, 0x1

    .line 1373
    :cond_4
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 1374
    const/4 v0, 0x1

    .line 1378
    :cond_5
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 1379
    const/4 v0, 0x1

    .line 1383
    :cond_6
    if-eqz v0, :cond_1

    .line 1388
    const/16 v4, 0x96

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1392
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1395
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1398
    const/16 v4, 0x8f

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1401
    const/16 v4, 0x86

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1404
    const/16 v4, 0x90

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1411
    iget-boolean v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    if-ne v4, v2, :cond_7

    .line 1412
    const/16 v4, 0x9b

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1416
    :cond_7
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1419
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    .line 1420
    const-string v2, "PduComposer"

    const-string v4, "makeRetrievePdu end"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1421
    goto :goto_1
.end method

.method private makeSendReqPdu()I
    .locals 6

    .prologue
    const/16 v5, 0x98

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 792
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 793
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 794
    iput v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 798
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 799
    const/16 v4, 0x80

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 802
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 804
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 805
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 807
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 809
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 812
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 871
    :cond_2
    :goto_0
    return v2

    .line 817
    :cond_3
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 820
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 824
    const/4 v0, 0x0

    .line 827
    .local v0, "recipient":Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 828
    const/4 v0, 0x1

    .line 832
    :cond_4
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 833
    const/4 v0, 0x1

    .line 837
    :cond_5
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 838
    const/4 v0, 0x1

    .line 842
    :cond_6
    if-eqz v0, :cond_2

    .line 847
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 851
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 854
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 857
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 860
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 863
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 866
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 869
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move v2, v3

    .line 871
    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 218
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 418
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 345
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 348
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 349
    .local v3, "textString":[B
    if-nez v3, :cond_1

    .line 368
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 359
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 361
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 362
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 364
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 365
    .local v1, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 366
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 367
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    .prologue
    const/16 v8, 0x8

    .line 278
    move-wide v4, p1

    .line 281
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-ge v2, v8, :cond_0

    .line 282
    ushr-long/2addr v4, v8

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 290
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 292
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 293
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 294
    add-int/lit8 v1, v1, -0x8

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 247
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 473
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 455
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 456
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 458
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 235
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 236
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 260
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 333
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 311
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 312
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 315
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 316
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 317
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x7f

    .line 385
    const-wide/16 v2, 0x7f

    .line 387
    .local v2, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 388
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 395
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 396
    mul-int/lit8 v1, v0, 0x7

    ushr-long v4, p1, v1

    .line 397
    .local v4, "temp":J
    and-long/2addr v4, v10

    .line 399
    const-wide/16 v6, 0x80

    or-long/2addr v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 401
    add-int/lit8 v0, v0, -0x1

    .line 402
    goto :goto_1

    .line 392
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    shl-long v6, v2, v1

    or-long v2, v6, v10

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_2
    and-long v6, p1, v10

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 405
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 434
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 435
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 209
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 210
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 162
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 164
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 181
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 192
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public make(Z)[B
    .locals 1
    .param p1, "forBackup"    # Z

    .prologue
    .line 1254
    iput-boolean p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    .line 1255
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    return-object v0
.end method
