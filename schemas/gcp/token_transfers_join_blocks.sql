SELECT
  blocks.timestamp,
  TIMESTAMP_SECONDS(blocks.timestamp) as timestamp_partition,
  blocks.hash,
  blocks.number,
  transactions.hash,
  transactions.nonce,
  transactions.transaction_index,
  transactions.from_address,
  transactions.to_address,
  transactions.value,
  transactions.gas,
  transactions.gas_price,
  transactions.input,
  receipts.cumulative_gas_used,
  receipts.gas_used,
  receipts.contract_address,
  receipts.root,
  receipts.status
FROM `ethereum.blocks` AS blocks
  JOIN `ethereum.token_transfers` AS token_transfers ON blocks.number = token_transfers.block_number